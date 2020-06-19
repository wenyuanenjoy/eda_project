module Sequence_Detector
(
	RST_B,
	SYSCLK,
	IN_VALID,
	MODE,
	DATA_IN,
	OUT_VALID,
	DATA_OUT ,

	counter,
	counter_ns,
	fsm_cs,
	fsm_ns,
	data_cs,
	data_pre,
	mode_cs,
	mode_pre
);

//declaration
input RST_B;
input SYSCLK;
input IN_VALID;
input MODE;
input DATA_IN;
output OUT_VALID;
output DATA_OUT;

//type
wire [1:0] MODE;
wire [3:0] DATA_IN;
reg        OUT_VALID;
reg  [3:0] DATA_OUT;

//state_parameter_3bit
parameter idle=3'b000;
parameter increment=3'b001;
parameter decrement=3'b010;
parameter steady=3'b011;
parameter done=3'b100;


//fsm_sate
output reg [2:0] fsm_cs;
output reg [2:0] fsm_ns;

//record register
output reg [3:0] data_cs;
output wire [3:0] data_pre;
output wire [1:0] mode_pre;
output reg [1:0] mode_cs;
output reg [2:0] counter;
output reg [2:0] counter_ns;
 
//constinunity
assign data_pre=DATA_IN;
assign mode_pre=MODE;

//fsm_state sequence
always@(posedge SYSCLK or negedge RST_B)
begin
	if(!RST_B)
	 fsm_cs<=idle;
	else
	 fsm_cs<=fsm_ns;
end

//record pre_data to data_cs
always@(posedge SYSCLK or negedge RST_B)
begin
	if(!RST_B)
	 data_cs<=4'b0;
	else if(MODE!=3 && IN_VALID)
			data_cs<=data_pre;
		  else
		   data_cs<=data_cs;

end

//counter
always@(posedge SYSCLK or negedge RST_B)
begin
	if(!RST_B)
	 counter<=0;
	else if(MODE!=3 && IN_VALID)
			counter<=counter_ns;
		  else
			counter<=counter;
end

//record pre_mode to mode_cs
always@(posedge SYSCLK or negedge RST_B)
begin
	if(!RST_B)
	 mode_cs<=2'b0;
	else if(MODE!=3 && IN_VALID)
	      mode_cs<=mode_pre;  
	     else
		   mode_cs<=mode_cs;
end

//counter combination
//mode==3,counter don't change
always@(*)
begin
	case(fsm_cs)
	idle:counter_ns=0;
	increment:
	begin
	 if(IN_VALID && MODE!=3 && DATA_IN==data_cs+1)//
	  counter_ns=counter+1;
	 else if( (DATA_IN!=data_cs+1 || MODE!=increment )&&MODE!=3)
	       counter_ns=0;
	      else //mode==3,counter stay
			 counter_ns=counter;	   
	end
	decrement:
	begin
	 if(IN_VALID && MODE!=3 && DATA_IN==data_cs-1)
	  counter_ns=counter+1;
	 else if( (DATA_IN!=data_cs-1 || MODE!=mode_cs)&& MODE!=3 )
			 counter_ns=0;
			else//mode=3
			 counter_ns=counter;
	end
	steady:
	begin
	 if(IN_VALID && MODE!=3 &&DATA_IN==data_cs)
	  counter_ns=counter+1;
	 else if( (DATA_IN!=data_cs || MODE!=mode_cs)&&MODE!=3 )
	       counter_ns=0;
			else//mode==3,stay
			 counter_ns=counter;
	end
	done:
	begin
	//when mode change;direct to next mode and counter set to zero
	 if( (IN_VALID && MODE!=mode_cs)&& MODE!=3 )
	   counter_ns=0;
	 else if((IN_VALID && MODE==mode_cs)&& MODE!=3)//when mode don't change ,but value error and set counter to zero,too
	       counter_ns=0;
		   else //mode==3
			 counter_ns=0;
	end
	default:counter_ns=0;
	endcase
end



//fsm_next_state combination---pro!!
always@(*)
begin
	case(fsm_cs)
	idle:
	begin
	 if((!IN_VALID)||(MODE==3))//input invalid-->stay origin
	  fsm_ns=idle;
	 else if(IN_VALID)
	       begin
			 case(MODE)
			 0:fsm_ns=increment;
			 1:fsm_ns=decrement;
			 2:fsm_ns=steady;
			 3:fsm_ns=fsm_cs;//stay
			 endcase
			 end
			else
			 fsm_ns=fsm_cs;
	end
	increment:
	begin
	 if((!IN_VALID)||(MODE==3))
	  fsm_ns=increment;
	 else if(IN_VALID)
	       begin
			  if(MODE==mode_cs)
			  begin
			    if(counter==1 && counter_ns==2 )
				 fsm_ns=done;
			   else
				 fsm_ns=fsm_cs;
			  end
			  else//MODE!=mode_cs
			    fsm_ns=MODE+1;

			 end
	end
	decrement:
	begin
	 if((!IN_VALID)||(MODE==3))
	  fsm_ns=decrement;
	 else if(IN_VALID)
	       begin
			  if(MODE==mode_cs)
			  begin
			    if(counter==1 && counter_ns==2 )
				 fsm_ns=done;
			   else
				 fsm_ns=fsm_cs;
			  end
			  else//MODE!=mode_cs
			    fsm_ns=MODE+1;
			 end
	end
	steady:
	begin
	 if((!IN_VALID)||(MODE==3))
	  fsm_ns=steady;
	 else if(IN_VALID)
	       begin
			  if(MODE==mode_cs)
			  begin
			    if(counter==1 && counter_ns==2 )
				 fsm_ns=done;
			   else
				 fsm_ns=fsm_cs;
			  end
			  else//MODE!=mode_cs
			    fsm_ns=MODE+1;
			 end
	end
	done:
	begin//make done state to work after
	if(!IN_VALID || MODE==3 )
	 fsm_ns=fsm_cs;
	else if(mode_cs==MODE &&DATA_IN==data_cs+1)
	      fsm_ns=done;
		  else if(mode_cs==MODE &&DATA_IN==data_cs-1)
		        fsm_ns=done;
				 else if(mode_cs==MODE &&DATA_IN==data_cs)
				       fsm_ns=done;
						else if(IN_VALID && MODE!=mode_cs &&MODE!=3)//convert mode
						      fsm_ns=MODE+1;
							  else if(IN_VALID && MODE==mode_cs && MODE!=3)//mode stable ,but value knock out,notice to set counter -->0
							        fsm_ns=MODE+1;
									 else 
									  fsm_ns=idle;
							  
	
//	 if(IN_VALID && MODE!=3 &&mode_cs==MODE &&DATA_IN==data_cs+1)
//	  fsm_ns=done;
//	 else if(IN_VALID && MODE!=3 &&mode_cs==MODE &&DATA_IN==data_cs-1)
//	       fsm_ns=done;
//	      else if(IN_VALID && MODE!=3 &&mode_cs==MODE &&DATA_IN==data_cs)
//			      fsm_ns=done;
//	           else if(IN_VALID && MODE!=mode_cs && MODE!=3)//when mode change set mode to special mode,and exclude mode==3
//				        fsm_ns=MODE+1;
//						 else if(MODE==3)
//						       fsm_ns=done;
//								else 
//							    fsm_ns=MODE+1;//backward yanzhegn!!
	end
	default:fsm_ns=fsm_cs;
	endcase
end

//output combination
always@(*)
begin
	if(fsm_cs==done && fsm_ns==done && MODE!=3 && IN_VALID)//exclude mode ==3
	begin
	 OUT_VALID=1;
	 DATA_OUT=DATA_IN;
	end
	else
	begin
	 OUT_VALID=0;
	 DATA_OUT=0;
	end
end

endmodule


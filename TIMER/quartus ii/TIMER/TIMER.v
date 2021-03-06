module TIMER
(
	SYSCLK,
	RST_B,
	TIME_MIN,
	TIME_SEC,
	START,
	MINUTE,
	SECOND,
	TIME_UP
);

//port declaration
input SYSCLK;
input RST_B;
input TIME_MIN;
input TIME_SEC;
input START;
output MINUTE;
output SECOND;
output TIME_UP;

//port type
wire [2:0] TIME_MIN;
wire [5:0] TIME_SEC;
reg  [2:0] MINUTE;
reg  [2:0] MINUTE_N;
reg  [5:0] SECOND;
reg  [5:0] SECOND_N;
reg        TIME_UP_TEMP;
//reg        TIME_UP_N;
reg        TIME_UP;        

//fsm 
reg  [1:0] state;
reg  [1:0] state_n;

//parameter
parameter idle=2'b00;
parameter count=2'b01;
parameter done=2'b10;
 
 //state_logic sequence
always@(posedge SYSCLK or negedge RST_B)
begin
	if(!RST_B)
	 state<=2'b0;
	else
	 state<=state_n;
end

//next_state combination
always@(*)
begin
	case(state)
	idle:
	begin
		if(START==1'b1 && !(TIME_MIN==0&&TIME_SEC==0))//note special zero case
		   state_n=count;
		else
			state_n=idle;
	end
	count:
	begin
		if(TIME_MIN==MINUTE&&TIME_SEC==SECOND+1)
			state_n=done;
		else
			state_n=count;
	end
	done:
	begin
		state_n=idle;
	end
	endcase
	
end

//ctrl signal sequence
always@(posedge SYSCLK or negedge RST_B)
begin
	if(!RST_B)
	begin
	  MINUTE<=3'b0;
	  SECOND<=3'b0;
	//  TIME_UP_TEMP<=1'b0;
	end
	else
	begin
	  MINUTE<=MINUTE_N;
	  SECOND<=SECOND_N;
	 // TIME_UP_TEMP<=TIME_UP_N;
	end
end


//ctr_next_state combination
always@(*)
begin
	if(state==count || (state==idle &&state_n==count) )
		begin
		 if(SECOND==6'd59)
			begin MINUTE_N=MINUTE+1;SECOND_N=0;end
		 else
			begin MINUTE_N=MINUTE ; SECOND_N=SECOND+1;end
		end
	else
		begin MINUTE_N=MINUTE;SECOND_N=SECOND;end

end


//output sequence
//always@(posedge SYSCLK or negedge RST_B)
//begin
	//if(!RST_B)
	 //TIME_UP_TEMP<=0;
	//else 
	 //TIME_UP_TEMP<=TIME_UP_N;; 
//end 


//output_next combination
always@(*)
begin
	if(state==done)
	 TIME_UP_TEMP=1;
	else
	 TIME_UP_TEMP=0;
end

//assemble
always@(*)
begin
	if(START==1&&state==idle&&TIME_MIN==0&&TIME_SEC==0)
		TIME_UP=START;
	else
		TIME_UP=TIME_UP_TEMP;
	
end

endmodule
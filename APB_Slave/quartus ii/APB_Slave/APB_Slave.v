module APB_Slave
(
	SYSCLK,
	RST_B,
	PSEL,
	PWRITE,
	PENABLE,
	PADDR,
	PWDATA,
	INT_B,
	PRDATA,
	//// step 2 :implement read option
	
	EX_TO,
	EX_CON,
	CNT_START,
	COUNT,
	///
	EX_CON_NS,
	EX_TO_NS,
	COUNT_NS,
	fsm_cs,
	fsm_ns
);

//declaration
input SYSCLK;
input RST_B;
input PSEL;
input PWRITE;
input PENABLE;
input PADDR;
input PWDATA;
output INT_B;
output PRDATA;/////
output EX_CON;
output EX_TO;
output CNT_START;
output COUNT;

//type
wire [4:0] PADDR;
wire [31:0] PWDATA;
reg INT_B;
reg [31:0] PRDATA;
reg [31:0] EX_CON;
reg [31:0] EX_TO;
//reg CNT_START;
reg [31:0] COUNT;

//parameter
parameter idle=3'b000;
parameter set=3'b001;
parameter enable=3'b010;
//parameter work=3'b011;
parameter done=3'b011;


//fsm
output reg [2:0] fsm_cs;
output reg [2:0] fsm_ns;

//reg assit
output reg [31:0] EX_TO_NS;
output reg [31:0] EX_CON_NS;
output reg [31:0] COUNT_NS;

//continuity
assign CNT_START=EX_CON[1];


//fsm_reg sequence
always@(posedge SYSCLK or negedge RST_B)
begin
	if(!RST_B)
	 fsm_cs<=idle;
	else
	 fsm_cs<=fsm_ns;
end

//assit reg sequence
always@(posedge SYSCLK or negedge RST_B)
begin
	if(!RST_B)
	 begin
	  EX_CON<=32'h0000_0000;
	  EX_TO<=32'h0000_0000;
	  COUNT<=32'H0000_0000;
	 end
	else
	 begin
	  EX_CON<=EX_CON_NS;
	  EX_TO<=EX_TO_NS;
	  COUNT<=COUNT_NS;
	 end
end

//fsm_ns combination
always@(*)
begin
	case(fsm_cs)
	idle:
	begin
	 if(PSEL && !PENABLE)
	  fsm_ns=set;
	 else
	  fsm_ns=idle;
	end
	set:
	begin
	 if(PSEL && PENABLE)
	  fsm_ns=enable;
	 else
	  fsm_ns=idle;
	end
	enable:
	begin
	 if(PSEL && !PENABLE)//lianxu fuzhi
	  fsm_ns=set;
	 else if(COUNT==EX_TO)//jishi jieshu----HIGHER PRIORITY TO CNT_START
	       fsm_ns=done;
			else if(CNT_START)//buwei done ze to enable count ,if just for read turn idle
					fsm_ns=enable;
			     else         //use for prdata ,need make start==0 pre
				   fsm_ns=idle;//fouze idle
				       
	end
	done:
	begin
	 fsm_ns=done;
	end
	default:fsm_ns=idle;
	endcase
end

//EX_TO combination
always@(*)
begin
	if(PWRITE && PSEL &&PENABLE && PADDR[0])
	 EX_TO_NS=PWDATA;
	else
	 EX_TO_NS=EX_TO;
end

//EX_CON combination
always@(*)
begin
	if(PWRITE && PSEL &&PENABLE && !PADDR[0])
	 EX_CON_NS=PWDATA;
	else
	 EX_CON_NS=EX_CON;
end

//COUNT combination
always@(*)
begin
	if(fsm_cs==enable && COUNT!=EX_TO)//adjust COUNT output
	 COUNT_NS=COUNT+1;
	else
	 COUNT_NS=0;
end

//output combination for int_b and count
always@(*)
begin
	if(fsm_cs==done && EX_CON[2] &&!EX_CON[3])
	 INT_B=0;
	else
	 INT_B=1;
		        
end

//output PRDATA combination
always@(*)
begin
	if(PSEL && PENABLE &&!PWRITE)
	 begin
	  if(PADDR[0])
	   PRDATA=EX_TO;
	  else
	   PRDATA=EX_CON;
	 end
	else
	  PRDATA=0;
end

//do not care prdata
endmodule



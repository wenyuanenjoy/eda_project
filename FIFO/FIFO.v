module FIFO
(
	SYSCLK,
	RST_B,
	WR_EN,
	RD_EN,
	FIFO_IN,
	EMPTY,
	FULL,
	FIFO_OUT
);

//declaration
input SYSCLK;
input RST_B;
input WR_EN;
input RD_EN;
input FIFO_IN;
output EMPTY;
output FULL;
output FIFO_OUT;

//type
wire [7:0] FIFO_IN;
reg EMPTY;
reg FULL;
reg [7:0] FIFO_OUT;
reg [7:0] FIFO_OUT_NS;


//addr
reg [2:0] w_addr;
reg [2:0] w_addr_ns;
reg [2:0] r_addr;
reg [2:0] r_addr_ns;

//mem 
reg [7:0] mem[4:0];

//addr <--
always@(posedge SYSCLK or negedge RST_B)
begin
	if(!RST_B)
	 begin w_addr<=0;r_addr<=0; end
	else
	 begin w_addr<=w_addr_ns;r_addr<=r_addr_ns; end
end


//addr_ns
always@(*)
begin
	if(!FULL && WR_EN)
	 w_addr_ns=(w_addr+1)%5;
	else if(!EMPTY && RD_EN)
	      r_addr_ns=(r_addr+1)%5;
		  else
		   begin w_addr_ns=w_addr;r_addr_ns=r_addr; end
end

//write mem and read mem_ns
always@(*)
begin
	if(!FULL && WR_EN)
	 mem[w_addr]=FIFO_IN;
	else if(!EMPTY && RD_EN)
	      FIFO_OUT_NS=mem[r_addr];
        else
		   FIFO_OUT_NS=FIFO_OUT;
end

//full and empty signal  combination
always@(*)
begin
	 EMPTY=0;FULL=0;
	if(w_addr==r_addr)
	 EMPTY=1;
	if(r_addr==(w_addr+1)%5)
	 FULL=1;

end 

//output <--delay for 1 period using NS
always@(posedge SYSCLK or negedge RST_B)
begin
		if(!RST_B)
		 FIFO_OUT<=0;
		else
		 FIFO_OUT<=FIFO_OUT_NS;
end

endmodule

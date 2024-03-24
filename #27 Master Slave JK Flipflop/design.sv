module masterslave(
  input j,k,clk,
  output reg q_s,q_sbar
);
  reg q_m,q_mbar;
  //master
  always @(posedge clk) begin
    if(j==0 && k==0) begin
      q_m=0;
      q_mbar=1;
    end
    else if(j==0 && k==1)begin
      q_m<=0;
      q_mbar<=~q_m;
    end
    else if(j==1 && k==0)begin
      q_m<=1;
      q_mbar<=~q_m;
    end
    else begin
      q_m<=~q_m;
      q_mbar<=~q_mbar;
    end
  end
  //slave
  always@(negedge clk)begin
    q_s<=q_m;
    q_sbar<=q_mbar;
  end
endmodule

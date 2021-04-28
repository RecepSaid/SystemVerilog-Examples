/* tb_lab3_rsd_p1.sv  
*  
* Hazırlayanlar:  
*   Recep Said Dulger  
*  
* Notlar:  
*   ELM235 2020 Bahar Lab3 - Problem 1 Testbench  
*   Y = NOT A and B denkleminin simulasyonu  
*   Bütün olası girişlere göre çıkış gözlemlenir.  
*  
*/ 
// Time Units and resolution of the simulation 
`timescale 1ns/1ps 
 
module tb_lab3_rsd_p1 ();     
	logic a, b; // all the inputs     
	logic y;    // all the outputs 
    
	lab3_rsd_p1 uut0(.a(a), .b(b), .y(y)); 

	initial begin         
	a = 0; b = 0; #10;  // a = 0, b = 0, wait 10 ns         
	b = 1;        #10;  // a = 0, b = 1, wait 10 ns         
	a = 1;        #10;  // a = 1, b = 1, wait 10 ns         
	b = 0;        #10;  // a = 1, b = 0, wait 10 ns                       
		      #20; // wait 20 ns after completion 
 
        $stop;              // stop the simulation     
end 
 
endmodule
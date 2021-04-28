/* lab3_rsd_p2.sv
*  
* Hazırlayanlar:  
*   Recep Said Dulger  
*  
* Notlar:  
*   ELM235 2020 Bahar Lab3 - Problem 2  
*   Y = NOT A and B denkleminin gerçeklemesi  
*  
*/ 
 
module lab3_rsd_p2 (     
	input  logic a, b, n1,     
	output logic y 
); 
	assign #3 n1= ~a;
	assign #5 y = n1 & b;
 
endmodule 
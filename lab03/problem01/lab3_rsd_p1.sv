/* lab3_rsd_p1.sv
*  
* Hazırlayanlar:  
*   Recep Said Dulger  
*  
* Notlar:  
*   ELM235 2020 Bahar Lab3 - Problem 1  
*   Y = NOT A and B denkleminin gerçeklemesi  
*  
*/ 
 
module lab3_rsd_p1 (     
	input  logic a, b,     
	output logic y 
); 

	assign y = ~a & b; 
 
endmodule 
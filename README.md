# Matrix-Multiplication-Using-MultiCore-Processor

Multiplication of matrices is a time consuming process so implementing matrix multiplication in
a single processor is an inefficient solution. The objective of this project is to multiply two
matrices efficiently using multiple processors.

Overview of the implemented solution

1. In this project we have used 4 different custom made processors to effectively carry out
the matrix multiplication.

2. The number of processors needed for a particular matrix multiplication is dependent on
the dimensions of those matrices.

3. If matrix A and matric B are the input matrices
          A. Each row of matrix A will be given to each and every activated processor.
          B. All the elements of matrix B will be given to all the activated processors

4. All the multiplications and additions necessary for matrix multiplication will be done in a
parallel manner within all the processors.

5. Results of the matrix multiplication will be stored in the data memory

Tools / Software

1.Modelsim – This is used as the simulation tool in our project

2.Quartus –This is used to compile the Verilog HDL code

3.Matlab – This is used to create input text files.

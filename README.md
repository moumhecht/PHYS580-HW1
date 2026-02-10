# Numerical Derivatives (Euler Method)
This program computes the second derivative of f(x) =x * sin(x) analytically 
and numerically using Euler's three point and Euler's five point formulae.

## Contents
main.f90 writes a program to compute the second derivative of f(x) and 
calls subroutines read_input and write_derivatives from read_write.f90 and
writes the analytic and numerical second derivatives in results.dat file

Derivatives are calculated from euler_formulas.f90 and analytic_functions.f90

plots_and_regression.ipynb takes data from results.dat. Numerical derivatives 
are plotted against values of h, and the error between numerical and analytic 
second derivative is plotted against h.
plots_and_regression.ipynb then computes the linear regression from the error,
printing the slope, which relates to the order of error.

makefile automates compiling all fortran code.

types.f90 defines integer parameters.

## Running and compiling code
To compile the code, type:
`$ make`
in terminal. The program **derivatives** will be created.

To run the program, type:
`$ ./derivatives`
in terminal.

The program will prompt the user to input a value for x_0. Enter a value for x_0, 
for which the second derivative will be computed and hit 'enter'. The program will 
then calculate the second derivative analytically and numerically, writing to results.dat

To compute analysis on data, open Jupyter Notebook to run plots_and_regression.ipynb. 
Click 'Run All' to run the notebook. 

Plots will be created and slopes from linear regression will print in output. 

To remove `.o` files and `derivatives` program, type:
`$ make mrproper`

! Program: numerical_derivatives
! By: Malida Hecht
!-----------------------------------------------------------------------------
!
! Calculates the second derivative of f(x) = x sin(x) using Euler's method.
! The program calls the subroutine read_input from read_write.f90
! The subroutine prompts the user to input x_0 for the value at which the second
! derivative will be evaluated at, and stores that value as x_zero.
! The program then calls the write_derivatives subroutine and evaluates the 
! analytical second derivative, as well as the numerical second derivative using
! both the three points and five points formula, printing the results on results.dat 
! file.
!-----------------------------------------------------------------------------
program numerical_derivatives
use types 
use read_write

implicit none
real(dp) :: x_zero

! the dp inside of the real(dp) declaration was defined in the types module
! and allows to use reals with double precision 
call read_input(x_zero)
call write_derivatives(x_zero)
end program numerical_derivatives
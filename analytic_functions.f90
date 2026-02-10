!-----------------------------------------------------------------------
!Module: analytic_functions
!-----------------------------------------------------------------------
!! By: Malida Hecht
!! 
!! This module defines functions to compute the f(x) = xsin(x) and 
!! the second derivative of f(x) = xsin(x) analytically.
!!----------------------------------------------------------------------
!! Included functions:
!!
!! analytic_f(x)
!! second_derivative_f(x)
!-----------------------------------------------------------------------
module analytic_functions
use types
implicit none

! The private statement restricts every function, parameter and variable
! defined in this module to be visible only by this module
private
! Then we use the public statement to only make visible to other modules 
! the few functions or subroutines that will be used by them
public analytic_f, second_derivative_f

contains

!-----------------------------------------------------------------------
!Function: analytic_f
!-----------------------------------------------------------------------
!! By: Malida Hecht
!!
!! This function computes the analytic value of x*sin(x) evaluated at x_0.
!! The function takes x_0 as input, and returns the analytic output at x_0
!! as y_zero.
!!----------------------------------------------------------------------
!! Arguments:
!!
!! x_zero	real	point x_0 at which to evaluate f(x_0)
!-----------------------------------------------------------------------
!! Result:
!!
!! y_zero	real	x_0 sin(x_0)
!-----------------------------------------------------------------------
function analytic_f(x_zero) result(y_zero)
    implicit none
    real(dp), intent(in) :: x_zero ! defining x_0 with double precision
    real(dp) :: y_zero ! defining y_0 (output) with double precision
    ! This one is pretty easy. The function should return
    ! x*sin(x)
    y_zero = x_zero * sin(x_zero) ! output is x*sin(x)
end function analytic_f

!-----------------------------------------------------------------------
!Function: second_derivative_f
!-----------------------------------------------------------------------
!! By: Malida Hecht
!!
!! This function computes the analytic value of the second derivative of
!! f(x)=x*sin(x) evaluated at x_0.
!!
!! f''(x)= 2 cos(x) - x sin(x)
!!----------------------------------------------------------------------
!! Arguments:
!!
!! x_zero	real	point x_0 at which to evaluate f''(x_0)
!-----------------------------------------------------------------------
!! Result:
!!
!! y_zero	real    value of f''(x_0)
!-----------------------------------------------------------------------
function second_derivative_f(x_zero) result(y_zero)
    implicit none
    real(dp), intent(in) :: x_zero
    real(dp) :: y_zero
    ! You need to code the analytic expression for 
    ! the second derivative of x*sin(x) and store it in y_zero
    y_zero = 2.0_dp * cos(x_zero) - (  x_zero * sin(x_zero) )
end function second_derivative_f
    
end module analytic_functions

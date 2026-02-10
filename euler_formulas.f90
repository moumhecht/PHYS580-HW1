!-----------------------------------------------------------------------
!Module: euler_formulas
!-----------------------------------------------------------------------
!! By: Malida hHecht
!!
!! The functions in this module compute f''(x_0) using the  
!! three points formula and the five points formula.
!!----------------------------------------------------------------------
!! Included functions:
!!
!! euler_3points(x,h), euler_5points(x,h)
!-----------------------------------------------------------------------
module euler_formulas
use types
use analytic_functions, only : analytic_f
implicit none

! The private statement restricts every function, parameter and variable
! defined in this module to be visible only by this module
private
! Then we use the public statement to only make visible to other modules 
! the few functions or subroutines that will be used by them
public euler_3points, euler_5points

contains

!-----------------------------------------------------------------------
!Function: euler_3points
!-----------------------------------------------------------------------
!! By: Malida Hecht
!!
!! This function computes the symmetric three point formula by taking
!! x_zero and a step size (dx) in order to compute the second derivative
!! numerically
!!----------------------------------------------------------------------
!! Arguments:
!!
!! x_zero   real    point x_0 at which to evaluate f''(x_0)
!! h_step   real    step size in the numerical expression
!-----------------------------------------------------------------------
!! Result:
!!
!! y_zero   real    (f(x+h)-2f(x)+f(x-h))/(h^2)
!-----------------------------------------------------------------------
function euler_3points(x_zero,h_step) result(y_zero)
    implicit none
    real(dp), intent(in) :: x_zero, h_step
    real(dp) :: y_zero
    real(dp) :: f_plus, f_zero, f_minus
    ! This evaluates the analytic function defined in the analytic_functions
    ! module at x+h, x, and x-h. Modify as you see necessary 
    f_plus = analytic_f(x_zero + h_step)
    f_zero = analytic_f(x_zero)
    f_minus = analytic_f(x_zero - h_step)

    ! Here you can use the evaluated values to calculate the numerical
    ! approximation to the second derivative
    y_zero = ( f_plus - (2.0_dp * f_zero)  + f_minus ) / h_step**2.0_dp
end function euler_3points

! Don't forget to implement the 5 point formula for the advanced part of the project


!-----------------------------------------------------------------------
!Function: euler_5points
!-----------------------------------------------------------------------
!! By: Malida Hecht
!!
!! This function computes the symmetric five point formula by taking
!! x_zero and a step size (dx) in order to compute the second derivative
!! numerically
!!----------------------------------------------------------------------
!! Arguments:
!!
!! x_zero   real    point x_0 at which to evaluate f''(x_0)
!! h_step   real    step size in the numerical expression
!-----------------------------------------------------------------------
!! Result:
!!
!! y_zero   real    (-f(x+2h)+16f(x+h)-30f(x)+16f(x-h)-f(x-2h))/(12h^2)
!-----------------------------------------------------------------------
function euler_5points(x_zero,h_step) result(y_zero)
    implicit none
    real(dp), intent(in) :: x_zero, h_step
    real(dp) :: y_zero
    real(dp) :: f_2plus, f_plus, f_zero, f_minus, f_2minus

    !! evaluate analytic fuction at x+2h, x+h, x, x-h, x-2h
    f_2plus = analytic_f(x_zero + 2.0_dp * h_step)
    f_2minus = analytic_f(x_zero - 2.0_dp * h_step)
    f_plus = analytic_f(x_zero + h_step)
    f_zero = analytic_f(x_zero)
    f_minus = analytic_f(x_zero - h_step)

    !! compute second derivative using symmetric five-point formula
    y_zero = (- f_2plus + (16.0_dp * f_plus) - (30.0_dp * f_zero) + (16.0_dp * f_minus) - (f_2minus) ) / ( 12.0_dp * h_step**2)
end function euler_5points  



end module euler_formulas
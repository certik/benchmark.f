module test_equationparser
    use parser_abstract
    use EquationParser
    use parameters
    
    implicit none
    
    private 
    
    character(len=*), dimension(11), parameter :: var = ['x', 'y', 'z', 'x1', 'x2', &
            'a', 'b', 'c', 'd', 'e', 'f']
    real(kind=kind(0.0d0)), dimension(11) :: x
    
    type, extends(parser_x), public :: equation_parser
        private
    contains
        procedure, nopass :: initialize
        procedure, nopass :: compute
    end type
    
    interface equation_parser
        module procedure :: constructor_null
    end interface

contains

    type(equation_parser) function constructor_null() result(this)
        this%name = 'EquationParser'
    end function
    
    subroutine initialize()
        x(1) = 0.175_r8
        x(2) = 0.110_r8
        x(3) = 0.900_r8
        x(4) = 0.508_r8
        x(5) = 30.000_r8
        x(6) = 0.900_r8
        x(7) = 0.100_r8
        x(8) = 0.110_r8
        x(9) = 0.120_r8
        x(10) = 0.120_r8
        x(11) = 0.140_r8
    end subroutine
    
    real(r8) function compute(eq)
        character(*), intent(in) :: eq
        compute = EVAL(eq, var, x)
    end function
end module
program test
    use iso_fortran_env, only: i1 => int8, i2 => int16, i4 => int32, i8 => int64, &
                               r4 => real32, r8 => real64, r16 => real128
    use FEQParse
    
    implicit none
    
    write(*,'(A,I20)') "test32  ", test32()
    write(*,'(A,I20)') "test64  ", test64()
    write(*,'(A,I20)') "testboth", test64()
    
    contains

    integer function test32() result(r)
        !private
        type(EquationParser) :: f
        real(r4) :: feval
        type(FEQParse_Function) :: func
        
        call AddFunction("myfunc32", myfunc32)

        f = EquationParser("MYFUNC32(x)", ["x"])
        
        feval = f%evaluate([1.0_r4])
        if ((abs(feval - 0.5_r4)) <= epsilon(1.0_r4)) then
            r = 0
        else
            r = 1
        end if
    end function
    
    integer function test64() result(r)
        !private
        type(EquationParser) :: f
        real(r8) :: feval
        type(FEQParse_Function) :: func
        
        call AddFunction("myfunc64", myfunc64)

        f = EquationParser("MYFUNC64(x)", ["x"])
        
        feval = f%evaluate([1.0_r8])
        if ((abs(feval - 0.5_r8)) <= epsilon(1.0_r8)) then
            r = 0
        else
            r = 1
        end if
    end function

    integer function testboth() result(r)
        !private
        type(EquationParser) :: f
        real(r8) :: feval
        type(FEQParse_Function) :: func
        
        call AddFunction("myfunc", myfunc32, myfunc64)

        f = EquationParser("MYFUNC(x)", ["x"])
        
        feval = f%evaluate([1.0_r8])
        if ((abs(feval - 0.5_r8)) <= epsilon(1.0_r8)) then
            r = 0
        else
            r = 1
        end if
    end function

    pure real(r4) function myfunc32(x)
        real(r4), intent(in) :: x
        myfunc32 = x / 2.0_r4
    end function
    
    pure real(r8) function myfunc64(x)
        real(r8), intent(in) :: x
        myfunc64 = x / 2.0_r8
    end function
end program
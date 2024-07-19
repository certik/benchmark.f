module benchmark_steps_dryrun
    use benchmark_workflow, only: workflow
    use benchmark_timer, only: clock
    use benchmark_kinds
    use benchmark_method
    use benchmark_options
    use benchmark_string, only: str
    use benchmark_output_unit
    
    implicit none
    
    private
    
    public :: dryrun
    
    type, extends(workflow) :: benchmark_dryrun
        type(runner_options), pointer :: options => null()
    end type
       
    interface dryrun
        module procedure :: dryrun_new
    end interface
    
    real(r8), parameter :: MINTIME = 100.0_r8
    
    contains
    
    type(benchmark_dryrun) function dryrun_new(options) result(step)
        class(runner_options), intent(in), target :: options    
        step%header = '                                       -- DRY RUN --                                                 '
        step%action => start_dryrun
        step%options => options
    end function
    
    subroutine start_dryrun(step)
        class(workflow), intent(inout) :: step
        !private
        integer :: k, count
        real(r8) :: start, finish, offset
        type(method) :: mtd
        integer :: repeat
        
        write (output_unit, '(A)') new_line('A'), step%header
        
        mtd = method(dummy_empty)
        repeat = 0
        
        select type(step)
        type is (benchmark_dryrun)
            do while (repeat < 5)
                count = 0
                call clock(start)
                finish = start
                do while (finish - start < MINTIME)
                    call mtd%invoke()
                    count = count + 1
                    call clock(finish)
                end do
                repeat = repeat + 1
            end do
            offset = (finish - start)/real(count, r8)
            step%options%offset = offset
            nullify(step%options)
        end select
        write (output_unit, '(A)') new_line('A'), '                            Offset:                   '//str(offset, '(f12.3)') // ' us'
    end subroutine
    
    subroutine dummy_empty()
        !do nothing
    end subroutine
    
end module
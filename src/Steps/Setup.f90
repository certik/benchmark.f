module benchmark_steps_setup
    use benchmark_workflow, only: workflow
    use benchmark_version, only: version
    use benchmark_systeminfo
    
    implicit none
    
    private
    
    public :: setup
       
    interface setup
        module procedure :: setup_new
    end interface
    
    contains
    
    type(workflow) function setup_new() result(step)
        step%header =   '                                                                @ @@                                ' // &
      new_line('A') //  '                                                               @@@@@#                               ' // &
      new_line('A') //  '                                                               @+@=@+                               ' // &
      new_line('A') //  '                                                              :@*@:@                                ' // &
      new_line('A') //  '                                                              =@:# @                                ' // &
      new_line('A') //  '                                                               @@@+:                                ' // &
      new_line('A') //  '                                                               @@=@                                 ' // &
      new_line('A') //  '                                 @@@@@@@@@@:                    @ @                                 ' // &
      new_line('A') //  '                            :@@@@@@%@#-::@+@@@@@@:            #-%#@ @@+                             ' // &
      new_line('A') //  '                          :@@@@@+-+::#@**%@@@%@%@@@@@@       -@@::-++@#@@                           ' // &
      new_line('A') //  '                         @@%@@@-%#@*%*-+@=*+%@@@@@@@@@@@@@   @@%#=@@=@*:@@:                         ' // &
      new_line('A') //  '                        @@@@@:@:@@@::%@:*:@++:@%@+%*@@@@#@@@@@@*-%: *@@  @@@                        ' // &
      new_line('A') //  '            +@@@*      @@@@@##=*:@@*#-:%+%@#+@%--@+@%#%@%#**=+ @*@@*::@@%*@@*                       ' // &
      new_line('A') //  '                *@@@% @@#@@%@*=@=-###**+=%-%#::%=%#%+*%:#=*%@:*+=@=:  #@@@@                         ' // &
      new_line('A') //  '                    @@@@+#--#@-+:-::::-## @-=:#@@:::+:-=*#@##@:@:#*@@@                              ' // &
      new_line('A') //  '                     @@#@@#*=*##%*=*=#%=:-::*:+:-+@@@#@%=*+%%@#@=:%@                                ' // &
      new_line('A') //  '                   ::@@@#%@+##%+@%#@@+#*#** :*%*#=%:%*=*@%##+-=+%@:                                 ' // &
      new_line('A') //  '                       @@@@@@@@@@*@@@@@%@@#* +-*:%%@@%@#%-+*@@@@:                                   ' // &
      new_line('A') //  '                          :#%%*%@%* -:*@@@@@-   :#@*%#+#@+=@*#=                                     ' // &
      new_line('A') //  '                                         #  %:@@@**##+#+=@@@@@                                      ' // &
      new_line('A') //  '                                          @#* @@@@@@@@@@@@:                                         ' // &
      new_line('A') //  '                                          :: :@@@#                                                  ' // &
      new_line('A') //  '                                        @@@#+@ @@=                                                  ' // &
      new_line('A') //  '                              @@@@@*=:@@@@@@=*: @@@@@@@@@@@@@@=                                     ' // &
      new_line('A') //  '                             %@@@@@@@@@# +@@%@*#: ::+#*::-:*++                                      ' // &
      new_line('A') //  '                                            @@@@%@#*::+@@@-:@                                       ' // &
      new_line('A') //  '                                                %@@@@@@@%@@@=                                       ' // &
      new_line('A') //  '   ______________________________________________________________________________________________   ' // &
      new_line('A') //  '                                                                                                    ' // &
      new_line('A') //  '                                      -- BENCHMARK --                                               '
                         
        step%action => step_run
    end function
    
    subroutine step_run(step)
        class(workflow), intent(inout) :: step
        
        write (*, '(A)') new_line('A'), step%header
        write (*, '(A)') new_line('A'), '                           Version:                   '//version // new_line('A') // &
                                      & '                           OS:                        '//os_name(get_os_type())
    end subroutine
    

end module
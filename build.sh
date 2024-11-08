#!/bin/bash

set -ex

FC=gfortran
FFLAGS="-ffree-line-length-none -cpp -Iinclude/"

$FC $FFLAGS -c src/Workflow.f90 -o a.o
$FC $FFLAGS -c src/ArgumentBase.f90 -o a.o
$FC $FFLAGS -c src/Version.f90 -o a.o
$FC $FFLAGS -c src/Kinds.f90 -o a.o
$FC $FFLAGS -c src/OutputUnit.f90 -o a.o
$FC $FFLAGS -c examples/poisson/rhofunc.f90 -o a.o
$FC $FFLAGS -c examples/parsers/equationparser/EquationConstants.f90 -o a.o
$FC $FFLAGS -c precmod.f90 -o a.o
$FC $FFLAGS -c FEQParse_Functions.F90 -o a.o
$FC $FFLAGS -c FEQParse_FloatStacks.F90 -o a.o
$FC $FFLAGS -c FEQParse_TokenStack.F90 -o a.o
$FC $FFLAGS -c error_module.f90 -o a.o
$FC $FFLAGS -c params.f90 -o a.o
$FC $FFLAGS -c FortranParser_parameters.f90 -o a.o
$FC $FFLAGS -c fparser.f90 -o a.o
$FC $FFLAGS -c precision.f90 -o a.o
$FC $FFLAGS -c M_Calculator.f90 -o a.o
$FC $FFLAGS -c SystemInfo.f90 -o a.o
$FC $FFLAGS -c Timer.f90 -o a.o
$FC $FFLAGS -c String.f90 -o a.o
$FC $FFLAGS -c Warning.f90 -o a.o
$FC $FFLAGS -c Statistics.f90 -o a.o
$FC $FFLAGS -c Options.f90 -o a.o
$FC $FFLAGS -c SteadyStateDetection.f90 -o a.o
$FC $FFLAGS -c AllocataionLibrary.f90 -o a.o
$FC $FFLAGS -c parameters.f90 -o a.o
$FC $FFLAGS -c equationparser.f90 -o a.o
$FC $FFLAGS -c stringmod.f90 -o a.o
$FC $FFLAGS -c FEQParse.F90 -o a.o
$FC $FFLAGS -c function_parser.f90 -o a.o
$FC $FFLAGS -c extrafunc.f90 -o a.o
$FC $FFLAGS -c fortranparser.f90 -o a.o
$FC $FFLAGS -c fee.f90 -o a.o
$FC $FFLAGS -c Argument.f90 -o a.o
$FC $FFLAGS -c Setup.f90 -o a.o
$FC $FFLAGS -c Compiler.f90 -o a.o
$FC $FFLAGS -c System.f90 -o a.o
$FC $FFLAGS -c Utility.f90 -o a.o
$FC $FFLAGS -c Abstract.f90 -o a.o
$FC $FFLAGS -c evalmod.f90 -o a.o
$FC $FFLAGS -c interpreter.f90 -o a.o
$FC $FFLAGS -c Method.f90 -o a.o
$FC $FFLAGS -c Runner3.f90 -o a.o
$FC $FFLAGS -c Runner4.f90 -o a.o
$FC $FFLAGS -c Runner2.f90 -o a.o
$FC $FFLAGS -c Runner8.f90 -o a.o
$FC $FFLAGS -c References.f90 -o a.o
$FC $FFLAGS -c Runner5.f90 -o a.o
$FC $FFLAGS -c Runner7.f90 -o a.o
$FC $FFLAGS -c Runner1.f90 -o a.o
$FC $FFLAGS -c Runner10.f90 -o a.o
$FC $FFLAGS -c Runner6.f90 -o a.o
$FC $FFLAGS -c Runner9.f90 -o a.o
$FC $FFLAGS -c Run.f90 -o a.o
$FC $FFLAGS -c DryRun.f90 -o a.o
$FC $FFLAGS -c Factory.f90 -o a.o
$FC $FFLAGS -c Steps.f90 -o a.o
$FC $FFLAGS -c Runner.f90 -o a.o
$FC $FFLAGS -c Benchmark.f90 -o a.o
$FC $FFLAGS -c Simple.f90 -o a.o
$FC $FFLAGS -c Poisson.f90 -o a.o
$FC $FFLAGS -c Allocation.f90 -o a.o
$FC $FFLAGS -c UpperCasing.f90 -o a.o
$FC $FFLAGS -c Parsers.f90 -o a.o

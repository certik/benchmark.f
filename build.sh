#!/bin/bash

set -ex

FC=gfortran
FFLAGS="-ffree-line-length-none -cpp -Iinclude/ -fPIC"

$FC $FFLAGS -c src/Workflow.f90 -o Workflow.o
$FC $FFLAGS -c src/ArgumentBase.f90 -o ArgumentBase.o
$FC $FFLAGS -c src/Version.f90 -o Version.o
$FC $FFLAGS -c src/Kinds.f90 -o Kinds.o
$FC $FFLAGS -c src/OutputUnit.f90 -o OutputUnit.o
$FC $FFLAGS -c src/SystemInfo.f90 -o SystemInfo.o
$FC $FFLAGS -c src/Timer.f90 -o Timer.o
$FC $FFLAGS -c src/String.f90 -o String.o
$FC $FFLAGS -c src/Warning.f90 -o Warning.o
$FC $FFLAGS -c src/Statistics.f90 -o Statistics.o
$FC $FFLAGS -c src/Options.f90 -o Options.o
$FC $FFLAGS -c src/SteadyStateDetection.f90 -o SteadyStateDetection.o
$FC $FFLAGS -c src/Argument.f90 -o Argument.o
$FC $FFLAGS -c src/Steps/Setup.f90 -o Setup.o
$FC $FFLAGS -c src/Method.f90 -o Method.o
$FC $FFLAGS -c src/Steps/Run.f90 -o Run.o
$FC $FFLAGS -c src/Steps/DryRun.f90 -o DryRun.o
$FC $FFLAGS -c src/Steps/Compiler.f90 -o Compiler.o
$FC $FFLAGS -c src/Steps/System.f90 -o System.o
$FC $FFLAGS -c src/Steps/Steps.f90 -o Steps.o
$FC $FFLAGS -c src/Benchmark.f90 -o Benchmark.o

$FC $FFLAGS -c examples/simple/Simple.f90 -o Simple.o
$FC $FFLAGS -o Simple \
    Simple.o \
    Workflow.o \
    ArgumentBase.o \
    Version.o \
    Kinds.o \
    OutputUnit.o \
    SystemInfo.o \
    Timer.o \
    String.o \
    Warning.o \
    Statistics.o \
    Options.o \
    SteadyStateDetection.o \
    Argument.o \
    Setup.o \
    Method.o \
    Run.o \
    DryRun.o \
    Compiler.o \
    System.o \
    Steps.o \
    Benchmark.o




#$FC $FFLAGS -c examples/poisson/rhofunc.f90 -o a.o
#$FC $FFLAGS -c examples/parsers/equationparser/EquationConstants.f90 -o a.o
#$FC $FFLAGS -c precmod.f90 -o a.o
#$FC $FFLAGS -c FEQParse_Functions.F90 -o a.o
#$FC $FFLAGS -c FEQParse_FloatStacks.F90 -o a.o
#$FC $FFLAGS -c FEQParse_TokenStack.F90 -o a.o
#$FC $FFLAGS -c error_module.f90 -o a.o
#$FC $FFLAGS -c params.f90 -o a.o
#$FC $FFLAGS -c FortranParser_parameters.f90 -o a.o
#$FC $FFLAGS -c fparser.f90 -o a.o
#$FC $FFLAGS -c precision.f90 -o a.o
#$FC $FFLAGS -c M_Calculator.f90 -o a.o
#$FC $FFLAGS -c AllocataionLibrary.f90 -o a.o
#$FC $FFLAGS -c parameters.f90 -o a.o
#$FC $FFLAGS -c equationparser.f90 -o a.o
#$FC $FFLAGS -c stringmod.f90 -o a.o
#$FC $FFLAGS -c FEQParse.F90 -o a.o
#$FC $FFLAGS -c function_parser.f90 -o a.o
#$FC $FFLAGS -c extrafunc.f90 -o a.o
#$FC $FFLAGS -c fortranparser.f90 -o a.o
#$FC $FFLAGS -c fee.f90 -o a.o
#$FC $FFLAGS -c Utility.f90 -o a.o
#$FC $FFLAGS -c Abstract.f90 -o a.o
#$FC $FFLAGS -c evalmod.f90 -o a.o
#$FC $FFLAGS -c interpreter.f90 -o a.o
#$FC $FFLAGS -c Runner3.f90 -o a.o
#$FC $FFLAGS -c Runner4.f90 -o a.o
#$FC $FFLAGS -c Runner2.f90 -o a.o
#$FC $FFLAGS -c Runner8.f90 -o a.o
#$FC $FFLAGS -c References.f90 -o a.o
#$FC $FFLAGS -c Runner5.f90 -o a.o
#$FC $FFLAGS -c Runner7.f90 -o a.o
#$FC $FFLAGS -c Runner1.f90 -o a.o
#$FC $FFLAGS -c Runner10.f90 -o a.o
#$FC $FFLAGS -c Runner6.f90 -o a.o
#$FC $FFLAGS -c Runner9.f90 -o a.o
#$FC $FFLAGS -c Factory.f90 -o a.o
#$FC $FFLAGS -c Runner.f90 -o a.o
#$FC $FFLAGS -c Poisson.f90 -o a.o
#$FC $FFLAGS -c Allocation.f90 -o a.o
#$FC $FFLAGS -c UpperCasing.f90 -o a.o
#$FC $FFLAGS -c Parsers.f90 -o a.o

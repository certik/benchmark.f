#!/bin/bash

fpm build --flag '-ffree-line-length-none'
#FPM_FFLAGS="--std=f23" fpm build --compiler lfortran --verbose --profile none

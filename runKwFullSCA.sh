s#!/bin/bash
PROJPATH=/home/vmdemo/ProjectsSandbox/TestCppCode
PROJNAME=testGHA

rm -rf kwinject.out
rm -rf kwtables

make clean

kwinject --overwrite  make all

kwbuildproject --url http://localhost:8080/$PROJNAME  -o kwtables  kwinject.out --force 

kwadmin --url http://localhost:8080 load $PROJNAME kwtables


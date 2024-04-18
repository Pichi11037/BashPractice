#!/bin/bash

: << COMMENT
use $? to check the result of the last command executed 0 is that no problems were found  and 1 is that the command returned a false value
COMMENT


[ 1 = 1 ]
echo Result of [ 1 = 1 ]: $?

[ hello = hello ]
echo Result of [ hello = hello ]: $?

[ 1 = 0 ]
echo Result of [ 1 = 0 ]: $?

[ 1 -eq 1 ]
echo Result of [ 1 -eq 1 ]: $?

TEST_VALUE=$(wc -w <<< "")
[ TEST_VALUE = 0 ]
echo Result of [ wc -w <<< "" = 0 ]: $?

TEST_VALUE=$(wc -w <<< "")
[ TEST_VALUE -eq 0 ]
echo Result of [ wc -w <<< "" -eq  0 ]: $?
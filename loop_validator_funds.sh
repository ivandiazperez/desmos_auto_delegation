#!/bin/bash
while true;
do

  expect widthdraw.exp
  sleep 120
  expect delegatetokey.exp 
  sleep 3600
done

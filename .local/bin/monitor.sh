#!/bin/bash

while true
do
    clear
    sensors | rg zenpower -A9999
    lscpu | rg 'CPU MHz'
    sleep 1
done


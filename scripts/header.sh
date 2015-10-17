#!/bin/env bash

width=$(tput cols)
text="$1"

tput init
tput clear

tput home
tput bold
printf "$text\n"
printf "=====================================================\n"
tput dim

tput cup 3 0

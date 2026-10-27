#!/bin/bash

echo "Simple Interest Calculator"

echo "Enter the principal amount:"
read principal

echo "Enter the rate of interest:"
read rate

echo "Enter the time period in years:"
read time

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN {printf "%.2f", (p * r * t) / 100}')

echo "Simple Interest: $interest"

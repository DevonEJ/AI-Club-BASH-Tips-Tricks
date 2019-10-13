#!/usr/bin/env bash

echo "Hello! Here is the 10th line of your file..."

head -n 10 $@ | tail -n 1



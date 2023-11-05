#!/bin/sh
crystal build fibonacci.cr --release -o fibonacci_cr    
strip fibonacci_cr
go build -ldflags="-s -w" -o fibonacci_go fibonacci.go 



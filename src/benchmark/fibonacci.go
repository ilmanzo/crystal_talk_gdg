package main

import "fmt"

func fibonacci(n uint32) uint32 {
	if n < 2 {
		return n
	}
	return fibonacci(n-1) + fibonacci(n-2)
}

func main() {
	fmt.Println(fibonacci(47))
}

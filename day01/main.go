package main

import (
	"fmt"
	"os"
)

func main() {
	// Read input file
	input, err := os.ReadFile("input.txt")
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error reading input file: %v\n", err)
		os.Exit(1)
	}

	// Part 1
	part1Result := solvePart1(string(input))
	fmt.Printf("Part 1: %v\n", part1Result)

	// Part 2
	part2Result := solvePart2(string(input))
	fmt.Printf("Part 2: %v\n", part2Result)
}

func solvePart1(input string) interface{} {
	// TODO: Implement Part 1 solution
	return "Not implemented yet"
}

func solvePart2(input string) interface{} {
	// TODO: Implement Part 2 solution
	return "Not implemented yet"
}

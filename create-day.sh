#!/bin/bash

# Script to create a new Advent of Code day from template

if [ -z "$1" ]; then
    echo "Usage: ./create-day.sh <day_number>"
    echo "Example: ./create-day.sh 2"
    exit 1
fi

DAY_NUM=$1
DAY_DIR="day$(printf "%02d" $DAY_NUM)"

if [ -d "$DAY_DIR" ]; then
    echo "Error: Directory $DAY_DIR already exists!"
    exit 1
fi

echo "Creating $DAY_DIR from template..."

# Copy template directory
cp -r template "$DAY_DIR"

# Update README with day number
sed -i "s/Day X/Day $DAY_NUM/g" "$DAY_DIR/README.md"
sed -i "s/day\/X/day\/$DAY_NUM/g" "$DAY_DIR/README.md"
sed -i "s/dayX/day$(printf "%02d" $DAY_NUM)/g" "$DAY_DIR/README.md"

# Update input.txt with day number
sed -i "s/day\/X/day\/$DAY_NUM/g" "$DAY_DIR/input.txt"

# Initialize Go module
cd "$DAY_DIR"
go mod init "github.com/Concross/advent-of-code-2025/$DAY_DIR"
cd ..

# Add to go.work if not already present
if ! grep -q "\./$DAY_DIR" go.work; then
    # Insert before the closing parenthesis
    sed -i "/^)/i \\	./$DAY_DIR" go.work
    echo "Added $DAY_DIR to go.work"
fi

echo "✅ Successfully created $DAY_DIR!"
echo ""
echo "Next steps:"
echo "  1. cd $DAY_DIR"
echo "  2. Add your puzzle input to input.txt"
echo "  3. Implement your solution in main.go"
echo "  4. Run: go run main.go"

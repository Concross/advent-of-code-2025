# Advent of Code 2025 🎄

My solutions for [Advent of Code 2025](https://adventofcode.com/2025) written in Go.

## Structure

This repository is organized as a Go workspace mono-repo, with each day's challenge in its own isolated module:

```
advent-of-code-2025/
├── go.work              # Go workspace configuration
├── create-day.sh        # Helper script to create new day folders
├── template/            # Template for new day challenges
├── day01/              # Day 1 challenge
│   ├── go.mod
│   ├── main.go
│   ├── main_test.go
│   ├── input.txt
│   └── README.md
├── day02/              # Day 2 challenge
│   └── ...
└── ...
```

## Quick Start

### Prerequisites

- Go 1.24 or later

### Creating a New Day

Use the provided script to quickly set up a new day from the template:

```bash
./create-day.sh <day_number>

# Example: Create day 2
./create-day.sh 2
```

This will:
1. Copy the template to `dayXX/`
2. Initialize a Go module for that day
3. Update the workspace configuration
4. Customize the README and input file for that day

### Manual Setup (Alternative)

If you prefer to set up a day manually:

```bash
# Create directory
mkdir dayXX
cd dayXX

# Initialize Go module
go mod init github.com/Concross/advent-of-code-2025/dayXX

# Copy template files or create your own
cp ../template/* .

# Add to workspace (edit go.work and add ./dayXX to the use block)
```

### Working on a Challenge

1. Navigate to the day's directory:
   ```bash
   cd day01
   ```

2. Add your puzzle input to `input.txt` (get it from [adventofcode.com](https://adventofcode.com))

3. Implement your solution in `main.go`:
   - Edit the `solvePart1()` function for Part 1
   - Edit the `solvePart2()` function for Part 2

4. Add test cases to `main_test.go` using the examples from the problem

5. Run tests:
   ```bash
   go test -v
   ```

6. Run your solution:
   ```bash
   go run main.go
   ```

7. Build an executable (optional):
   ```bash
   go build -o day01
   ./day01
   ```

## Go Workspace Benefits

Using Go workspaces provides several advantages:

- **Isolation**: Each day is its own module with its own dependencies
- **Simplicity**: Easy to work on multiple days simultaneously
- **Clean**: No dependency conflicts between different challenges
- **Flexible**: Can use different packages/libraries for different days as needed

## Running All Tests

From the root directory:

```bash
# Test all existing days using the helper script
./test-all.sh

# Or test specific days manually
go test ./day01/...
go test ./day01/... ./day02/...
```

## Project Goals

- Use Go for computational challenges
- Keep each day isolated in its own module
- Maintain a clean mono-repo structure
- Focus on readable and efficient solutions

## License

This is personal learning code for Advent of Code challenges.

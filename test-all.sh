#!/bin/bash

# Script to run tests for all existing day directories

echo "Running tests for all days..."
echo ""

# Find all dayXX directories and run tests
for day_dir in day[0-9][0-9]; do
    if [ -d "$day_dir" ]; then
        echo "Testing $day_dir..."
        go test "./$day_dir/..." || exit 1
    fi
done

echo ""
echo "✅ All tests passed!"

#!/bin/bash

# Read the user input
echo "Testing $1"

exerciseClass="$1"
testClass="${1}Test"

# Create target directory if it doesn't exist
mkdir -p target

# Compile the exercise source file first
javac -d target "./${exerciseClass}.java"
if [ $? -ne 0 ]; then
    echo "Failed to compile ${exerciseClass}.java"
    exit 1
fi

# Compile the test class (with exercise classes and test libs on classpath)
javac -d target -cp "./target:./test/lib/*" "./test/${testClass}.java"
if [ $? -eq 0 ]; then
    echo "Compiled successfully"
else
    echo "Failed to compile test"
    exit 1
fi

echo "Running test..."
java -jar ./test/lib/junit-platform-console-standalone-1.9.0-M1.jar \
    -cp "./target:./test/lib/system-lambda-1.2.1.jar:./test/lib/hamcrest-2.2.jar" \
    -c "$testClass"


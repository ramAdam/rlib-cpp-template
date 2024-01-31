#!/bin/bash

# Clean build directory
rm -rf build
mkdir build

# Generate build files
cd build
cmake ..

# Check if cmake succeeded
if [ $? -eq 0 ]; then
    # Build the project
    cmake --build .

    # Check if build succeeded
    if [ $? -eq 0 ]; then
        # Execute the program
        ./src/HelloRayLib   # Replace with your actual executable name
    else
        echo "Build failed. Not executing the program."
    fi
else
    echo "CMake configuration failed. Build not attempted."
fi
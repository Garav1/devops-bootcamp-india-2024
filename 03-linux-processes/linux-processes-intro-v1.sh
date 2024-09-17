#!/bin/bash

echo "Welcome to the Linux Process Introduction!"
echo "----------------------------------------"

# Function to display process information
show_process_info() {
    echo "Current process ID (PID): $$"
    echo "Parent process ID (PPID): $PPID"
    echo "Current user: $(whoami)"
    echo "----------------------------------------"
}

# Show initial process info
show_process_info

# Create a child process
echo "Creating a child process..."
sleep 5 &
child_pid=$!
echo "Child process created with PID: $child_pid"
echo "----------------------------------------"

# Show running processes
echo "Showing running processes:"
ps aux | head -n 5
echo "----------------------------------------"

# Demonstrate process states
echo "Demonstrating process states..."
echo "Running 'sleep 10' in the background"
sleep 10 &
bg_pid=$!
echo "Process $bg_pid is in the background"
echo "Bringing it to the foreground"
fg %1
echo "Process completed"
echo "----------------------------------------"

# Clean up
echo "Cleaning up..."
kill $child_pid 2>/dev/null

echo "Script completed. Explore more about Linux processes!"
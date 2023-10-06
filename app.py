import time

# Print a message to the console
print("Hello, World from Container trigger!")

# Simulate some actions and log entries
for i in range(1, 2):
    print(f"Performing action {i}...")
    time.sleep(1)  # Simulate some work
    print(f"Action {i} completed.")
    

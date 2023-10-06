import time

# Print a message to the console
print("Hello, World from Container trigger!")

# Simulate some actions and log entries
for i in range(1, 6):
    print(f"Performing action {i}...")
    time.sleep(1)  # Simulate some work
    print(f"Action {i} completed.")
    
# Generate some log entries
for log_entry in ["Log entry 1", "Log entry 2", "Log entry 3"]:
    print(log_entry)

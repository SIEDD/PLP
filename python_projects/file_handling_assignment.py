try:
    # File Creation
    with open("my_file.txt", "w") as file:
        file.write("Hello, this is line 1.\n")
        file.write("12345\n")
        file.write("This is line 3 with a mix of strings and numbers.\n")
    
    # File Reading and Display
    with open("my_file.txt", "r") as file:
        print("Contents of my_file.txt:")
        for line in file:
            print(line.strip())
    
    # File Appending
    with open("my_file.txt", "a") as file:
        file.write("Appending line 4.\n")
        file.write("67890\n")
        file.write("This is line 6, appended to the existing content.\n")

except FileNotFoundError:
    print("File not found!")
except PermissionError:
    print("Permission denied!")
finally:
    print("Program execution complete.")

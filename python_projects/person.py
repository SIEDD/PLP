class Person:
    def __init__(self, name, age, gender):
        self.name = name
        self.age = age
        self.gender = gender
    
    def introduce(self):
        print(f"Hi, I'm {self.name}. I am {self.age} years old and I am {self.gender}.")

# instance of the Person class
person1 = Person("Said", 22, "male")

# Call the introduce method to display the person's information
person1.introduce()

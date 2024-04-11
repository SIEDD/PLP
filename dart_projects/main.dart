// Define an interface
abstract class Shape {
  void draw();
}

// Define a class that implements the interface
class Circle implements Shape {
  @override
  void draw() {
    print("Drawing Circle");
  }
}

// Define a base class
class Animal {
  void speak() {
    print("Animal speaks");
  }
}

// Define a derived class that inherits from the base class
class Dog extends Animal {
  @override
  void speak() {
    print("Dog barks");
  }
}

// Define a class that overrides an inherited method
class Cat extends Animal {
  @override
  void speak() {
    print("Cat meows");
  }
}

// Define a class that initializes data from a file
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  factory Person.fromFile(String filePath) {
    // Read data from file and initialize Person object
    // For demonstration, let's assume reading data from a CSV file
    List<String> data = ["John,25"];
    List<String> parts = data.first.split(',');
    return Person(parts[0], int.parse(parts[1]));
  }
}

// Define a method that demonstrates the use of a loop
void printNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

void main() {
  // Instantiate a Circle object
  Circle circle = Circle();
  circle.draw(); // Output: Drawing Circle

  // Instantiate a Dog object
  Dog dog = Dog();
  dog.speak(); // Output: Dog barks

  // Instantiate a Cat object
  Cat cat = Cat();
  cat.speak(); // Output: Cat meows

  // Instantiate a Person object initialized from a file
  Person person = Person.fromFile("data.txt");
  print("Name: ${person.name}, Age: ${person.age}"); // Output: Name: John, Age: 25

  // Demonstrate the use of a loop
  printNumbers(5); // Output: 1, 2, 3, 4, 5
}


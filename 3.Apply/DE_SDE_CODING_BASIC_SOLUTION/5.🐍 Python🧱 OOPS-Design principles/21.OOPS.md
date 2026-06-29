from abc import ABC, abstractmethod  # Abstraction support
# Definitions as variables (colored in IDE)
class_def = "Class: A blueprint used to create objects with properties and methods"
object_def = "Object: An instance of a class that holds data and behavior"
constructor_def = "Constructor: A special method to initialize object data"
encapsulation_def = "Encapsulation: Binding data and methods inside a class"
inheritance_def = "Inheritance: A class can reuse properties and methods of another class (is-a)"
composition_def = "Composition: A class can include other class objects as parts (has-a)"
polymorphism_def = "Polymorphism: Same method can behave differently for different objects"
method_overriding_def = "Method Overriding: Child class provides its own implementation of parent method"
abstraction_def = "Abstraction: Hiding internal details and showing only essential features"

# Base class
class Person(ABC):                     # OOP: Class (Blueprint) + Abstraction support
    def __init__(self, name, age):     # OOP: Constructor (used for Object Initialization)
        self.name = name               # OOP: Encapsulation (data stored inside object)
        self.age = age                 # OOP: Encapsulation

    @abstractmethod
    def introduce(self):               # OOP: Abstraction (defines interface without implementation)
        pass

# Child class
class Student(Person):                 # OOP: Inheritance (Student inherits Person)
    def __init__(self, name, age, course):  # OOP: Constructor + Composition (has-a relationship)
        super().__init__(name, age)        # OOP: Reuse parent constructor
        self.course = course               # OOP: Composition (Student has-a Course object)

    def introduce(self):                 # OOP: Method Overriding (same method as parent)
        print("I am student", self.name, "studying", self.course.title)

# Composition class
class Course:                            # OOP: Class (used for composition)
    def __init__(self, title):           # OOP: Constructor + Encapsulation
        self.title = title               # OOP: Encapsulation

# Object creation + Polymorphism
c = Course("Python Full Stack")          # OOP: Object creation (memory allocated for Course)
s = Student("Shivam", 25, c)            # OOP: Object creation (memory allocated for Student + Person)
s.introduce()                            # OOP: Polymorphism (calls child class introduce() method)

# ================================================================

# ========================== BOOK SYSTEM OOP ==========================

from abc import ABC, abstractmethod

# Base class
class User(ABC):                              # OOP: Class (Blueprint) + Abstraction support
    def __init__(self, name, age):            # OOP: Constructor (used for Object Initialization)
        self.name = name                      # OOP: Encapsulation (data stored inside object)
        self.age = age                        # OOP: Encapsulation

    @abstractmethod
    def introduce(self):                      # OOP: Abstraction (forces meaningful implementation in child)
        return f"User {self.name}, Age {self.age}"   # OOP: Common reusable logic (real-world meaningful base behavior)


# Child class
class Customer(User):                         # OOP: Inheritance (Customer inherits User)
    def __init__(self, name, age, order):     # OOP: Constructor + Composition (has-a relationship)
        super().__init__(name, age)           # OOP: Reuse parent constructor
        self.order = order                    # OOP: Composition (Customer has-a Order object)

    def introduce(self):                      # OOP: Method Overriding (same method as parent)
        base_info = super().introduce()       # OOP: Reuse parent behavior (Abstraction + Inheritance)
        return f"{base_info} has ordered '{self.order.book.title}'"  # OOP: Polymorphism (extended behavior)


# Composition class (Book)
class Book:                                   # OOP: Class (used for composition)
    def __init__(self, title):                # OOP: Constructor + Encapsulation
        self.title = title                    # OOP: Encapsulation


# Composition class (Order)
class Order:                                  # OOP: Class (used for composition)
    def __init__(self, book):                 # OOP: Constructor + Composition
        self.book = book                      # OOP: Composition (Order has-a Book object)


# Object creation + Polymorphism
b = Book("Python Full Stack")                 # OOP: Object creation (memory allocated for Book)
o = Order(b)                                  # OOP: Object creation (Order composed with Book)
c = Customer("Shivam", 25, o)                 # OOP: Object creation (Customer + User)
print(c.introduce())                          # OOP: Polymorphism (calls child class introduce() with meaningful output)
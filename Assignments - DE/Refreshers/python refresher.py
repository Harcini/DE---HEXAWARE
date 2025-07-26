
# 1. Writing and Running First Program

print("Hello, Python!")  

# 2. Keywords and Identifiers

# Valid identifiers:
student_name = "Harcini"
age = 20
_is_registered = True


# 3. Variables and Operators
# Variables hold values
a = 10
b = 3

# Arithmetic Operators
print("Addition:", a + b)
print("Subtraction:", a - b)
print("Multiplication:", a * b)
print("Division:", a / b)
print("Floor Division:", a // b)
print("Modulus:", a % b)
print("Exponent:", a ** b)

# Comparison Operators
print("Is a equal to b?", a == b)
print("Is a greater than b?", a > b)

# Logical Operators
x = True
y = False
print("x and y:", x and y)
print("x or y:", x or y)
print("not x:", not x)


# 4. Data Types

# Numeric Types
integer_num = 7             # int
float_num = 3.14            # float
complex_num = 2 + 5j        # complex

print("Integer:", integer_num)
print("Float:", float_num)
print("Complex:", complex_num)

# Sequence Types
# String
my_string = "Python is awesome"
print("String:", my_string)

# List
fruits = ["apple", "banana", "cherry"]
print("List:", fruits)

# Tuple
colors = ("red", "green", "blue")
print("Tuple:", colors)

# Boolean Type
is_active = True
is_admin = False
print("Is Active?", is_active)
print("Is Admin?", is_admin)

# Type checking
print("Type of fruits:", type(fruits))
print("Type of float_num:", type(float_num))
print("Type of is_admin:", type(is_admin))


# 1. Taking Input and Printing Output

name = input("Enter your name: ")
print("Hello,", name)

# Convert string input to number
num = int(input("Enter a number: "))
print("You entered:", num)


# 2. If Statement

age = int(input("Enter your age: "))
if age >= 18:
    print("You are eligible to vote.")

# 3. If-Else Statement

marks = int(input("Enter your marks: "))
if marks >= 40:
    print("You passed!")
else:
    print("You failed!")

# 4. If-Elif-Else Statement

grade = int(input("Enter your grade: "))
if grade >= 90:
    print("A Grade")
elif grade >= 75:
    print("B Grade")
elif grade >= 50:
    print("C Grade")
else:
    print("Fail")

# 5. For Loop

print("Printing numbers from 1 to 5 using for loop:")
for i in range(1, 6):
    print(i)

# 6. While Loop

print("Printing numbers from 1 to 5 using while loop:")
i = 1
while i <= 5:
    print(i)
    i += 1

# 7. Nested Loops

print("Nested Loop Example (2x3):")
for i in range(2):         
    for j in range(3):     
        print(f"i={i}, j={j}")


# 8. Break, Continue, and Pass
print("Break Example:")
for i in range(1, 10):
    if i == 5:
        break
    print(i)

print("Continue Example:")
for i in range(1, 6):
    if i == 3:
        continue
    print(i)

print("Pass Example:")
for i in range(1, 4):
    if i == 2:
        pass  
    print("i =", i)

# 1. Introduction to Lists
fruits = ["apple", "banana", "cherry"]
print("Fruits List:", fruits)

# Accessing Elements
print("First fruit:", fruits[0])
print("Last fruit:", fruits[-1])

# 2. List Methods and Slicing
# Slicing
print("First two fruits:", fruits[:2])  # ['apple', 'banana']

# List Methods
fruits.append("orange")
print("After append:", fruits)

fruits.insert(1, "mango")
print("After insert:", fruits)

fruits.remove("banana")
print("After remove:", fruits)

popped = fruits.pop()
print("Popped item:", popped)
print("After pop:", fruits)

print("Length of list:", len(fruits))
print("Is 'apple' in list?", "apple" in fruits)

# 3. Introduction to Dictionaries

student = {
    "name": "Harcini",
    "age": 20,
    "course": "Python"
}
print("Student Dictionary:", student)
print("Student Name:", student["name"])

# Dictionary Methods
student["grade"] = "A"          # Add new key
student["age"] = 21             # Update value
print("Updated Student:", student)

del student["course"]           # Delete a key
print("After deletion:", student)

print("Keys:", student.keys())
print("Values:", student.values())
print("Items:", student.items())


# 4. Introduction to Sets

unique_numbers = {1, 2, 3, 3, 2}
print("Unique Set:", unique_numbers)

unique_numbers.add(4)
print("After add:", unique_numbers)

unique_numbers.remove(2)
print("After remove:", unique_numbers)

# Set Operations
set1 = {1, 2, 3}
set2 = {3, 4, 5}

print("Union:", set1.union(set2))
print("Intersection:", set1.intersection(set2))
print("Difference:", set1.difference(set2))


# 5. Introduction to Map (Functional Programming)

numbers = [1, 2, 3, 4, 5]

# Map: square each number
squared = list(map(lambda x: x ** 2, numbers))
print("Original Numbers:", numbers)
print("Squared Numbers:", squared)

# Map with named function
def cube(n):
    return n ** 3

cubed = list(map(cube, numbers))
print("Cubed Numbers:", cubed)

# -----------------------------------------
# 1. Python Functions (User-defined)
# -----------------------------------------
def greet(name):
    print("Hello,", name)

greet("Harcini")

# -----------------------------------------
# 2. Default Argument Values
# -----------------------------------------
def welcome(name="Guest"):
    print("Welcome,", name)

welcome()
welcome("Niha")

# -----------------------------------------
# 3. Keyword Arguments
# -----------------------------------------
def student_info(name, age, course):
    print("Name:", name)
    print("Age:", age)
    print("Course:", course)

student_info(course="Python", name="Alice", age=22)

# -----------------------------------------
# 4. Arbitrary Argument Lists (*args)
# -----------------------------------------
def total_marks(*marks):
    print("All marks:", marks)
    return sum(marks)

print("Total:", total_marks(75, 80, 90))

# -----------------------------------------
# 5. Arbitrary Keyword Arguments (**kwargs)
# -----------------------------------------
def user_profile(**info):
    for key, value in info.items():
        print(f"{key}: {value}")

user_profile(name="Bob", age=25, location="Chennai")

# -----------------------------------------
# 6. Lambda Expressions
# -----------------------------------------
add = lambda a, b: a + b
print("Lambda Add:", add(3, 4))

# -----------------------------------------
# 7. Mapping Function
# -----------------------------------------
nums = [1, 2, 3, 4]
squared = list(map(lambda x: x**2, nums))
print("Squared List:", squared)

# -----------------------------------------
# 8. String Functions
# -----------------------------------------
text = "  Hello Python  "
print("Upper:", text.upper())
print("Lower:", text.lower())
print("Strip:", text.strip())
print("Replace:", text.replace("Python", "World"))
print("Split:", text.split())

# -----------------------------------------
# 9. Number Functions
# -----------------------------------------
print("abs(-10):", abs(-10))
print("round(3.456):", round(3.456, 2))
print("max(1, 5, 9):", max(1, 5, 9))
print("min(1, 5, 9):", min(1, 5, 9))

# -----------------------------------------
# 10. Date and Time Functions
# -----------------------------------------
import datetime

now = datetime.datetime.now()
print("Current DateTime:", now)

today = datetime.date.today()
print("Today's Date:", today)

# Custom date
custom_date = datetime.date(2025, 7, 25)
print("Custom Date:", custom_date)

# Date formatting
print("Formatted:", now.strftime("%d-%m-%Y %H:%M:%S"))


# 1. Class and Object

class Student:
    def study(self):
        print("Student is studying")

s1 = Student()
s1.study()


# 2. Access Specifiers

class Demo:
    public_var = "I am public"
    _protected_var = "I am protected"
    __private_var = "I am private"

    def show(self):
        print(self.public_var)
        print(self._protected_var)
        print(self.__private_var)

obj = Demo()
obj.show()
print(obj.public_var)
print(obj._protected_var)


# 3. Constructor (__init__)

class Person:
    def __init__(self, name):
        self.name = name

    def greet(self):
        print("Hello,", self.name)

p1 = Person("Harcini")
p1.greet()

# 4. Inheritance

class Animal:
    def speak(self):
        print("Animal speaks")

class Dog(Animal):
    def bark(self):
        print("Dog barks")

d = Dog()
d.speak()
d.bark()


# 5. Polymorphism + Method Overriding

class Shape:
    def area(self):
        print("Calculating area...")

class Circle(Shape):
    def area(self):
        print("Area of Circle: πr²")

class Square(Shape):
    def area(self):
        print("Area of Square: side²")

# Overridden method calls
c = Circle()
s = Square()
c.area()
s.area()


# 6. File Handling


# Writing to a file
with open("sample.txt", "w") as f:
    f.write("Hello, this is a test file.\n")
    f.write("Python is awesome!\n")

# Reading the file
with open("sample.txt", "r") as f:
    content = f.read()
    print("File Content:\n", content)


# 7. Exception Handling

try:
    num1 = int(input("Enter a number: "))
    num2 = int(input("Enter another number: "))
    result = num1 / num2
    print("Result:", result)

except ZeroDivisionError:
    print("You can't divide by zero!")

except ValueError:
    print("Invalid input. Please enter numbers.")

finally:
    print("This always executes.")

# ---------------------------------------------
# 1. Python Modules (User-defined Functions)
# ---------------------------------------------
def greet(name):
    return f"Hello, {name}!"

def add(a, b):
    return a + b

# ---------------------------------------------
# 2. Executing Module as Script
# ---------------------------------------------
if __name__ == "__main__":
    print("🔹 This file is being run directly.")
    print(greet("Harcini"))
    print("Addition:", add(10, 5))
else:
    print("🔹 Module imported, not run directly.")

# ---------------------------------------------
# 3. Standard Modules Demo
# ---------------------------------------------
import math
import random
import datetime

print("\n--- Standard Modules ---")
print("Square root of 16:", math.sqrt(16))
print("Random number (1–100):", random.randint(1, 100))
print("Today's date:", datetime.date.today())
now = datetime.datetime.now()
print("Formatted datetime:", now.strftime("%d-%m-%Y %I:%M %p"))

# ---------------------------------------------
# 4. Simulated Package: math_utils and string_utils
# ---------------------------------------------

# Simulate package module: math_utils
def square(n):
    return n * n

# Simulate package module: string_utils
def shout(text):
    return text.upper() + "!!!"

print("\n--- Simulated Package Usage ---")
print("Square of 7:", square(7))
print("Shouting 'python':", shout("python"))

# ---------------------------------------------
# 5. Importing * from a Package (Simulated)
# ---------------------------------------------
# Imagine this is inside __init__.py of a package
__all__ = ['greet', 'add', 'square', 'shout']

print("\n--- __all__ List ---")
print("Available functions in simulated package/module:", __all__)

# ---------------------------------------------
# 6. Intra-Package References (Simulated)
# ---------------------------------------------
# In real package: string_utils.py might import from math_utils.py like this:
# from .math_utils import square

print("\n--- Intra-package reference (simulated) ---")
print("Calling square() from inside string_utils logic:", square(3))

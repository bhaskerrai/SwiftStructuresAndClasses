import UIKit


//Structures and classes are general-purpose, flexible constructs that become the building blocks of your program’s code. You define properties and methods to add functionality to your structures and classes using the same syntax you use to define constants, variables, and functions.


//Comparing Structures and Classes:

//Structures and classes in Swift have many things in common. Both can:

//Define properties to store values
//Define methods to provide functionality
//Define subscripts to provide access to their values using subscript syntax
//Define initializers to set up their initial state
//Be extended to expand their functionality beyond a default implementation
//Conform to protocols to provide standard functionality of a certain kind


//Classes have additional capabilities that structures don’t have:

//Inheritance enables one class to inherit the characteristics of another.
//Type casting enables you to check and interpret the type of a class instance at runtime.”
//Deinitializers enable an instance of a class to free up any resources it has assigned.
//Reference counting allows more than one reference to a class instance.


//The additional capabilities that classes support come at the cost of increased complexity. As a general guideline, prefer structures because they’re easier to reason about, and use classes when they’re appropriate or necessary. In practice, this means most of the custom data types you define will be structures and enumerations.

//Structures and classes have a similar definition syntax.

struct MyStruct { //Give types UpperCamelCase names
    var n = 57
    var k = 10 //“properties and methods lowerCamelCase names (such as frameRate and incrementCount)
}

class MyClass {
    var n = 57
    var k = 10
}


let someStruct = MyStruct()
let someClass = MyClass()


//“Memberwise Initializers for Structure Types:
//All structures have an automatically generated memberwise initializer, which you can use to initialize the member properties of new structure instances. Initial values for the properties of the new instance can be passed to the memberwise initializer by name:

var a = MyStruct(n: 10, k: 20)
print(a)

let b = MyClass() //Unlike structures,class instances don’t receive a default memberwise initializer
//print(b)




//A Value Type holds the data within its own memory allocation and a Reference Type contains a pointer to another memory location that holds the real data. Reference Type variables are stored in the heap while Value Type variables are stored in the stack.

//All of the basic types in Swift—integers, floating-point numbers, Booleans, strings, arrays and dictionaries—are value types, and are implemented as structures behind the scenes.
//All structures and enumerations are value types in Swift. This means that any structure and enumeration instances you create—and any value types they have as properties—are always copied when they’re passed around in your code.


var newStruct = a
a.n = 77
print(a)


newStruct.n = 88
print(newStruct)



//Class is reference types
let newClass = b

b.n = 19
b.k = 18
print(b.n,b.k)

newClass.k = 30
print(b.n,b.k)

//“Note that b and newClass are declared as constants, rather than variables. However, you can still change b.k and newClass.k because the values of the b and newClass constants themselves don’t actually change. b and newClass themselves don’t “store” the MyClass instance—instead, they both refer to a MyClass instance behind the scenes. It’s the k property of the underlying MyClass that’s changed, not the values of the constant references to that MyClass.




//Identity Operators:
//Because classes are reference types, it’s possible for multiple constants and variables to refer to the same single instance of a class behind the scenes. (The same isn’t true for structures and enumerations, because they’re always copied when they’re assigned to a constant or variable, or passed to a function.)
//It can sometimes be useful to find out whether two constants or variables refer to exactly the same instance of a class. To enable this, Swift provides two identity operators:

//Identical to (===)
//Not identical to (!==)


//Use these operators to check whether two constants or variables refer to the same single instance:
if b === newClass{
    print("equal")
}

print(b === newClass)

class ClassAgain{
    //some shit
}
var c = ClassAgain()

print(c === newClass)

//Note that identical to (represented by three equals signs, or ===) doesn’t mean the same thing as equal to (represented by two equals signs, or ==). Identical to means that two constants or variables of class type refer to exactly the same class instance. Equal to means that two instances are considered equal or equivalent in value, for some appropriate meaning of equal, as defined by the type’s designer.

//“Pointers
//If you have experience with C, C++, or Objective-C, you may know that these languages use pointers to refer to addresses in memory. A Swift constant or variable that refers to an instance of some reference type is similar to a pointer in C, but isn’t a direct pointer to an address in memory, and doesn’t require you to write an asterisk (*) to indicate that you are creating a reference. Instead, these references are defined like any other constant or variable in Swift. The standard library provides pointer and buffer types that you can use if you need to interact with pointers directly—see Manual Memory Management.

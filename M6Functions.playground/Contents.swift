import UIKit

var greeting = "Hello, playground"

func sayHello()
{
    print("Hello")
}

sayHello()


func sayHello(_ name: String)
{
    print("Hello, \(name)")
}

sayHello("John")

func add(a: Int, b: Int)
{
    print(a+b)
}
add(a: 1, b: 2)


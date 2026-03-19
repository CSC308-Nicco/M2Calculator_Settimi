import UIKit

let test = 10
let test2: Int = 20
let test3: Int
test3 = 30

print(test3)

let num: Int? = 10
print(num)

let numStudens: Int? = nil

let number = 123
print(number)
let numberOptional: Int? = 123
print(numberOptional)

//print(numberOptional!)
let a = numberOptional

print(a)

let b = numberOptional!

let str = "123"
let num2 = Int(str)

let strOptional: String? = "123"
let num3 = Int(strOptional!)!

let str2: String? = "123"
let num4 = Int(str2!)

if let str2: String = str2, num3 = Int(str2)
{
    print(num3)
}
else
{
    print("Optional binding failed")
}

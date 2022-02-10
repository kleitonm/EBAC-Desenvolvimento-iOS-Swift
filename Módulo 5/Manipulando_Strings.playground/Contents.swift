import UIKit
// Strings
var greeting = "Hello,"

//for char in greeting {
//    print(char)
//print(greeting.count)
let firstindex = greeting.startIndex

let lastindex = greeting.Index(greeting.startIndex, offsetBy: 4)


let fisrtChar = greeting[firstIndex]
let lastchar = greeting[endIndex]

print(firstChar)
print(lastChar)

let withoutInterpolation = "sem interpolação"

let rawString = #"Teste com raw string \#(withoutInterpolation). Esse é um dos usos!"#

print(rawString)

let name = "Carlos Henrique"

let spaceIndex = name.firstIndex(of: " ")!
let firstname = name[name.index(after: spaceIndex)]

print(firstname)

//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

// &&, and, e
let a = true && true
let b = true && false
let c = false && false

// || or, ou
let d = true || true
let e = true || false
let f = false || false

let andOr = 8 < 9 || 8 < 9
print(andOr)

let firstName = "Kleiton"
let secondName = "Mendes"

let isEqual = firstName == "Kleiton"
let order = firstName < secondName // separa por ordem alfabetica

// toggle() - altera os valores
var switchSatate = true
let g = !switchSatate
switchSatate.toggle()
switchSatate.toggle()
switchSatate.toggle()


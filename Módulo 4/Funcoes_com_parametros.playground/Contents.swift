import Foundation

var greeting = "Hello, playground"

//func printGreet(say: String, name: String) {
//    print(say + " - " + name )
//}
//
//printGreet(say: greeting, name: "Kleiton")

//func greet(_ person: String, from hometown: String) {
//    print("Hello \(person)! from \(hometown),")
//}
//
//greet( "Kleiton", from: "São Paulo")

//func printGreeting(_ say:String, _ name: String) -> String{
//    return say + "-" + name
//}
//var test: String = printGreeting(greeting, "Kleiton")
//print(test)
//
//func printTest(_ text:inout String)-> String {
//    print(text)
//    text = "TESTE"
//    return text
//}
//
//print(printTest(&test))
//
//print(test)

func printGreeting(_ say:String, _ name: String) -> String{
    return say + "-" + name

var test: String = printGreeting(greeting, "Kleiton")

func greet(_ person: String, from hometown: String) -> String {
    print("1 - Hello \(person)! from \(hometown),")
}
func greet(_ person: String, from hometown: String) -> String{
    return "1 - Hello \(person)! from \(hometown),"
}
func greet(_ person: String, _ from hometown: String)  -> Int {
    return 2
}


import UIKit

//Struct Parte 1
struct User {
    let firstName: String
    let lastName: String
    var email: String
    var isActive: Bool

    var fullName: String {
        return "\(firstName) \(lastName)"
    }

    func printFullName() {
        print("\(firstName) \(lastName)")
    }
}

var user = User(firstName: "Kleiton", lastName: "Mendes", email: "kleiton.emdes@gmail.com", isActive: true)

print(user.firstName)
print(user.fullName)
user.printFullName()

user.email = "kleitonmendes@gmail.com"

print(user.email)

//Struct Parte 2


struct User {
    let firstName: String
    let lastName: String
    var email: String
    var isActive: Bool

    var fullName: String {
        return "\(firstName) \(lastName)"
    }

    func printFullName() {
        print("\(firstName) \(lastName)")
    }

    mutating func activeUser() {
        isActive: true
    }
}

var user = User(firstName: "Kleiton", lastName: "Mendes", email: "kleiton.emdes@gmail.com", isActive: true)

print(user.firstName)
print(user.fullName)
user.printFullName()

user.email = "kleitonmendes@gmail.com"

print(user.email)

user.activeUser()

print(user.isActive)

//exemplo de tipo valor/ type value
var a = 5
var b = a

print(a)
print(b)

a = 10
print(a)
print(b)

import UIKit

public class Person {
    fileprivate var hair: String
    var age: Int
    private var size: Double
    var name: String
    var lastname: String

    var fullname: String {
        "\(name) \(lastname)"
    }

    init(hair: String, age: Int, size: Double, name: String, lastname: String) {
        self.hair = hair
        self.age = age
        self.size = size
        self.name = name
        self.lastname = lastname
    }
}

//var person01 = Person(hair: "curto", age: 21, size: 1.60, name: "Apollo", lastname: "Mendes")
//var person02 = Person(hair: "longo", age: 34, size: 1.79, name: "Kleiton", lastname: "Mendes")
//
//print(person01.fullname)
//print(person02.fullname)

//Aula 2: Classes referência x valor
//
//var person01 = Person(hair: "curto", age: 21, size: 1.60, name: "Apollo", lastname: "Mendes")
//var person02 = Person(hair: "longo", age: 34, size: 1.79, name: "Kleiton", lastname: "Mendes")
//var person03 = person01
//
//person01.lastname = "Savoya"
//
//print(person01.fullname)
//print(person02.fullname)
//print(person03.fullname)


//Aula 3: Herança

class Student: Person {
    var grade: Double
    var course: String

    init(grade: Double, course: String, hair: String, age: Int, size: Double, name: String, lastname: String) {
        self.grade = grade
        self.course = course
        
        super.init(hair: hair, age: age, size: size, name: name, lastname: lastname)
    }
    
    convenience init(grade: Double, course: String) {
        self.init(grade: grade, course: course, hair: "", age: 0, size: 0, name: "Carmelo", lastname: "Antony")
    }
    
    func getGrade() -> Double {
        return grade
    }
}

var student01 = Student(grade: 9.0, course: "iOS", hair: "curto", age: 26, size: 1.65, name: "Lebron", lastname: "James")

var student02 = Student.init(grade: 10.0, course: "Swift")

student01.fullname
student02.fullname
student02.getGrade()

//Encapsulamento
student01.hair = "Cacheados"
print(student01.hair)

class Account: Person {
    private var balance: Double = 0.0
    
    func deposito(value: Double) -> Double {
        return value + balance
    }
    private func setBalance(value: Double) {
        balance = value
    }
}

var myAccount = Account(hair: "curto", age: 20, size: 1.85, name: "Lebron", lastname: "James")

myAccount.setBalance = 1000.00

var myValue = myAccount.getDeposito(value: 10.000)
print(myValue)

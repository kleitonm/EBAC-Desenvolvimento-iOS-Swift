// Extension

class Person {
    var hair: String
    var age: Int
    var size: Double
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

extension Person {
    func getFullName() -> String {
            return "\(name) \(lastname)"
    }
}

//var person = Person(hair: "longo", age: 34, size: 1.82, name: "Michael", lastname: "Jackson")
//
//print(person.getFullName())

extension String {
    
    func replace(target: String, withString: String) -> String {
        return self.replacingOccurences(of: target, with: withString)
    }
    var length: Int {
        get {
            return self.count
        }
    }
    
}

let newString = "the old String".replace(target: "old", withString: "new")
print(newString)
print(newString.length)

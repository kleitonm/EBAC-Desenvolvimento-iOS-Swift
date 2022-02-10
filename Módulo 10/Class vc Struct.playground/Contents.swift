import Foundation

// Struct vc Class

// Value Reference

class Animal {
    var name: String


init(name: String) {
    self.name = name
}
    // Deinit
    deinit {
        print("(\name) is removed")
    }
}

var dog: Animal? = Animal(name: "dog")
print(dog!.name)
dog = nil

//var dog = Animal(name: "Apollo")
//var cat = dog
//
//print(dog.name)
//print(cat.name)
//
//dog.name = "bird"
//cat.name = "cat"
//
//print(cat.name)

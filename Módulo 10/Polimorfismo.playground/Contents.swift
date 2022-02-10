//Polomorfismo

func addNums(a: Int, b: Int) -> Int {
    return a + b
}

func addNums(a: Int, b: Int, c: Int) -> Int {
    return a + b + c
}

print(addNums(a: 10, b: 20))
print(addNums(a: 10, b: 20, c: 30))

class Animal {
    func makeNoise() {
        print("cachorro")
    }
}

class Dog: Animal {
    override func makeNoise() {
        print("dalmata")
    }
}

class BlackPanther: Animal {
    override func makeNoise() {
        print("pantera")
    }
}

var animal: Animal = Dog()
animal.makeNoise()

animal = BlackPanther()
animal.makeNoise()

animal = Animal()
animal.makeNoise()

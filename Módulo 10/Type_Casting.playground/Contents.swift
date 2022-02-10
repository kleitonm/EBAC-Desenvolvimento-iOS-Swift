//Type Casting

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

let pets = [Dog(), BlackPanther(), Dog(), BlackPanther(), Dog(), BlackPanther()]

for _ in pets {
//    if let dog = pet as? Dog {
//        dog.makeNoise()
//    }
}

switch pets {
case let dog as Dog:
    dog.makeNoise()
case let blackPanther as BlackPanther:
    blackPanther.makeNoise()
default:
break
}


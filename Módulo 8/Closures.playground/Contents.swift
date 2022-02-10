import UIKit

// Closures


//var multiplyAnonymous: {int, int} -> Int

var multiplyAnonymous = { (a: Int, b: Int) -> Int in
    return a * b
}

multiplyAnonymous = { (a: Int, b: Int) -> Int in return a * b }

multiplyAnonymous = { (a, b) in a * b }

multiplyAnonymous = { $0 * $1 }

let result = multiplyAnonymous(2, 5)

var players: [String] = ["Carlos", "Henrique", "João", "Sandra"] // Array

let stringLong = players.sorted {
    $0.count > $1.count
}

print(stringLong)

players.forEach {
    print("\($0)")
}

let mapName = players.map { $0.uppercased()}
print(mapName)

let filterName = players.filter { $0.count > 5}

print(filterName)

let sum = players.reduce(0) { $0 + $1.count }
print(sum)

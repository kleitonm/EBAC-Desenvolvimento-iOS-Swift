import UIKit

//Aula 5: Countable ranges e For in

//Countable ranges - os "..." é uma forma representar uma forma de sequencia de números inteiros que podem ser contatos
let range = 0...4
let range = 0...<4 // ele conta, mas não inclui o número 4

// For in
let sum = 0
for x in 0...count {
    print(x)
    sum += x
}
print(sum)

//sem constante
for _ in 0...count {
    var c = count + 1
    suns += c
}
print(suns)

for _ in 0..<count {
    var c = count + 1
    suns += c
}
print(suns)

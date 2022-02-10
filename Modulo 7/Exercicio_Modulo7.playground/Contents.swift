// 1) Seguindo este array abaixo, qual valor é o output dessa função?

//var frutas = ["Maçã", "Banana", "Melão", "Pera"]
//var comida = frutas[3]

// O valor que será o output é a "Pera"

// 2) Seguinco o mesmo exercicio acima, agora inclua a Fruta Pera, troque de posição Banana e Melão.
// No final conte quantas frutas tem no Array.

var frutas = ["Maçã", "Banana", "Melão", "Morango"]

frutas.append("Pera")

frutas.swapAt(1, 2)

frutas.count

// 3 )Pensando nesse código abaixo, qual é o tipo de x? E qual é o seu valor?

let d = ["John": 23, "James": 24, "Vicent": 34, "Louis": 29]
let x = d.sorted{ $0.1 < $1.1 }.map{ $0.0}

///X é do tipo String
//O valor de X é [“John”, “James”, “Louis”, “Vicente”]

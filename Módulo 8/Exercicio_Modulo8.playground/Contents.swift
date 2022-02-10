// 1) - Qual o tipo de x, e o que será printado referente ao valor x?
var language = "Objc"

let code = { [language] in
    print(language)
}

language = "Swift"

let newCode = code
newCode()

import Foundation

let d = ["john": 23, "james": 24, "vincent": 34, "louis": 29]
let x = d.sorted{ $0.1 < $1.1 }.map{ $0.0 }

//x é do tipo String, e será printado: ["john", "james", "louis", "vincent"].

// 2) - Criar uma Struct que aceite nome e idade, e printar os valores de saída

struct Usuario {
    let nome: String
    let idade: Int
}

var usuario = Usuario(nome: "Apollo", idade: 30)

print("Meu nome é: \(usuario.nome), e tenho \(usuario.idade)")

// 3) - Seguindo o exemplo acima, crie uma stored properties e nela calcule o IMC de uma pessoa.
// IMC = peso / (altura x altura)

struct Balanca {
    var peso: Double = 100.0
    var altura: Double = 1.80
    
}

var imc = Balanca(peso: 60.0, altura: 1.60)
var resultado = imc.peso/(imc.altura*imc.altura)

//print("Meu IMC é: \(resultado)")

if ( resultado < 18.5){
    print("Abaixo do peso")
} else if (resultado >= 18.5 && resultado < 24.9) {
    print("Peso normal")
} else if (resultado > 25 && resultado <= 29.9) {
    print("Sobrepeso")
} else if (resultado > 30 && resultado <= 34.9) {
    print("Obesidade grau 1")
} else if (resultado > 35 && resultado <= 39.9) {
    print("Obesidade grau 2")
} else if(resultado > 40) {
    print("Obesidade grau 3")
}
    
else {
    print("Seu IMC é: \(resultado) kg/m2")
}

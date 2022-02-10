import UIKit
import Foundation

func calcularIMC(peso: Double, altura: Double) -> Double {
    let imc = peso / (altura * altura)
    return imc
}

var imc: Double = calcularIMC(peso: 90, altura: 1.83)

//imc = Double(calcularIMC)

if ( imc < 18.5){
    print("Abaixo do peso")
} else if (imc >= 18.5 && imc < 24.9) {
    print("Peso normal")
} else if (imc > 25 && imc <= 29.9) {
    print("Sobrepeso")
} else if (imc > 30 && imc <= 34.9) {
    print("Obesidade grau 1")
} else if (imc > 35 && imc <= 39.9) {
    print("Obesidade grau 2")
} else if(imc > 40) {
    print("Obesidade grau 3")
}

else {
    print("Seu IMC é: \(imc) kg/m2")
}

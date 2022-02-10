import UIKit

//1) Qual das seguintes atribuição são válidas?
var name: String? = "Carlos"
//var age: Int = nil
let kilometer: Float = 26.7
var lastName: String? = nil

//As Atribuiçoes válidas são:
//var name: String? = "Carlos"
//let kilometer: Float = 26.7
//var lastName: String? = nil

//Uma variavel não pode ser declarada como nula.

print("\n")

//2) Faça um unwarp com segurança com a constante, 'number' e print com a condição mais legível.
var numericalString = "3"
var number = Int(numericalString)

print("\(number ?? 0) is a mágic number.")

//ou:

var numericalString = "3"
if let number = Int(numericalString) {
    print("\(number) is a mágic number.")
} else {

    print("String could not be converted.")
}

print("\n")


//3) Se alteramos o valor da variavel numericalString para "cinco" e executar o playgrpound, o que acontecerá?
//a - Vai funcionar sem problemas
//b - Não vai funcionar
//c - acredito que não funcione.

var numericalString: String? = "cinco"
var number = Int(numericalString)

print("\(number) is the magic number.")

//a - Vai funcionar sem problemas
//Como a String é opcional ela aceita converter uma String para Int

print("\n")

//4) A Classe UIViewController possui uma propriedade chamada tabBarController. A propriedade tabBarController é optinal do tipo 'UITabBarController?'. O proqprio tabBarController contém um tabBar como propriedade.
//  Complete o codigo abaixo preenchendo com o uso apropriado do optional chainig para acessar a pripeiedade 'tabBar'.

    var viewController = UIViewController()
    let tabBarController = UITabBarController()
    if let tabBar = viewController.tabBarController?.tabBar  {
        print("Aqui tem uma tabBar controller.")
    } else {
        print("Aqui não tem uma tabBar controller")
}






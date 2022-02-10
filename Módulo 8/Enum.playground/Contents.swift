import UIKit

//Enum Parte 1
//enum MoveDirection: Int {
//    case forward
//    case back
//    case left
//    case right
//}
//
//enum MoveDirection {
//    case forward, back, left, right
//}
//
//var move = MoveDirection.right
//
//var move: MoveDirection = .right
//print(move.rawValue)
//switch move {
//case .forward:
//    print("Movemos para frente")
//case .back:
//    print("Movemos para trás")
//case .left:
//    print("Movemos para esquerda")
//case .right:
//    print("Movemos para direita")
//}
//
//func doMove(_ movement: MoveDirection) {
//    switch move {
//        case .forward:
//            print("Movemos para frente")
//        case .back:
//            print("Movemos para trás")
//        case .left:
//            print("Movemos para esquerda")
//        case .right:
//            print("Movemos para direita")
//        }
//}

//doMove(.left)

//enum Medir {
//    case weight(Double)
//    case age(Int)
//    case size(widht: Double, height: Double)
//}
//
//Enum Parte 2

enum Medir {
    case peso(Double)
    case idade(Int)
    case tamanho(widht: Double, height: Double)
}

var medir = Medir.tamanho(widht: 19, height: 20)
var medir2 = Medir.peso(91.5)

func printEnum(_ medir: Medir) {
    switch medir {
    case .idade(let age):
        print("minha idade é: \(age)")
    case . peso(let weight):
        print("meu peso é: \(weight)")
    case . tamanho(let height, let widht):
        print("minha altura é: \(height), meu comprimento é: \(widht)")

    }
}

printEnum(medir)
printEnum(medir2)

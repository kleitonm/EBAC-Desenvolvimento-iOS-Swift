//import UIKit
//
//var play: [String] = ["Pedro", "Paulo", "Gabriela", "Antõnio"] // array
//
//print(play.isEmpty)
//
//var player: [String] = ["Pedro", "Paulo", "Gabriela", "Antõnio"] // array
//
//if player.count < 5 {
//    print("É menos")
//} else {
//    print("Não é maior")
//}
//
//var firstPlayer = player.min() // .first
//var lastPlayer = player.max() // .last
//
//print([1,2,3,4,5,6].first)
//print([6,5,4,3,2,1].last)
//
//firstPlayer = player[0]
//
//let numberPlayerSlice = player[1...2]
//
//var hasPlayer = player.countains("Maria")
//
////Aula 3: Modificando Array
//
//player.append("Sara")
//player += ["Claudiano"]
//
//player.insert("Hariel", at: 1)
//
//
////Aula 4: Removendo elementos do Array
//print("Antes: ", player)
//
//var removeElem = player.removeLast()
//print(removeElem)
//
//removeElem = player.remove(at: 3)
//
//var getIndexPlayer = player.firstIndex(of: ""Maria"")
//
//var removePlayer: String = ""
//
//if let getIndexPlayer = getIndexPlayer {
//    removePlayer = player.remove(at: getIndexPlayer)
//}
//
//print("removePlayer :", removePlayer)
//print("Depois: ", player)

//Aula 5: Atualizando os elementos do Array

var players: [String] = ["Cebola", "Tomate", "Pipino", "Alface", "Agrião", "Pimentão"]

//players[3] = "Abacate"
//players[4] = "Cenoura"


players[0...3] = ["Escarola","Brócolis","Azeitona"]

print(players)

//Aula 6: Movendo Elementos

//let playerNewFirst = players.firstIndex(of: "Carrot")
//players.insert(playerNewFirst, at: 0)

var indexNewFirst = players.firstIndex(of: "Tomato")
var indexOtherPlayer = players.firstIndex(of: "Pimentão Yellow")

if let indexNewFirst = indexNewFirst, let indexOtherPlayer = indexOtherPlayer {
    players.swapAt(indexNewFirst, indexOtherPlayer)
}

players.sort()

print(players)

import UIKit

//Dictionary

var players: [String: Double] = ["Carlos": 20.0, "Henrique": 30.0, "João": 25.0, "Sandra": 15.0]

//players = [:] //limpar player
//players.isEmpty // verifica se dentro do deu Dictonary esta vazio
//players.count // contar a quantidade de elementos dentro de um dictionary

    if let pointsPlayer = players["Henrique"] {
        print(pointsPlayer)
}

//players["Henrique"] = nil
//print(players)

//Aula 8: Dictionary - Parte 2

//formas de remover um valor de um dicionário
players["Henrique"] = nil
players.removeValue(forKey: "Henrique")

//Adicionar uma nova chave de valor
players["Henrique"] = 50.0


let oldPoints = players.updateValue(60.0, forKey: "Henrique")

if let oldPoints = oldPoints {
    print(oldPoints)
}
// interar sobre os Double
for (player, point) in players {
    print("player => \(player) - points => \(points)")
}
//Interar sobre as Keys/chaves
for player in players.keys {
    print("players =>\(players)")
}

//Interar sobre as sobre os valores
for points in players.values {
    print("point =>\(points)")
}

print(players)

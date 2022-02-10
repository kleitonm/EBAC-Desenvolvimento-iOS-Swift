
//Exercício - 1
//Crie uma nova classe Empregado com um init que requer
//dois argumentos de string: nome e sobrenome.
//Use os argumentos para inicializar as propriedades com os
//mesmos nomes dos argumentos.
//Exibe uma mensagem com os valores de nome e
//sobrenome quando uma instância da classe é criada.

class Empregado{
    var nome: String
    var sobrenome: String
    
    var fullname: String {
        "\(nome) \(sobrenome)"
    }
    
    init(nome: String, sobrenome: String) {
        self.nome = nome
        self.sobrenome = sobrenome
    }
    
}

var empresa = Empregado(nome: "Lebron", sobrenome: "James")


empresa.fullname


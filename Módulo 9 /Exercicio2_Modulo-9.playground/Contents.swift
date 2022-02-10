import UIKit

//Exercício - 2
//Crie uma instância da classe Empregado e atribua a uma
//variável.
//Verifique as mensagens impressas na área Debug do
//Playground.
//Crie uma nova instância da classe Empregado e atribua a
//uma variável definida anteriormente.
//Verifique as mensagens impressas na área de depuração do
//Playground.

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

//empresa.fullname

class Cracha: Empregado {
    var setor: String
    var funcao: String
    var polo: String
    
    init(setor: String, funcao: String, polo: String, nome: String, sobrenome: String) {
        self.setor = setor
        self.funcao = funcao
        self.polo = polo
    
    
    super.init(nome: nome, sobrenome: sobrenome)
}
   
    convenience init(setor: String, funcao: String, polo: String) {
        self.init(setor: setor, funcao: funcao, polo: polo, nome: "Stefan", sobrenome: "Curry")
    }
    
    func getSetor() -> String {
        return setor
    }

    
}
var empresaSP = Cracha(setor: "Ti", funcao: "Desenvolvedor", polo: "São Paulo", nome: "Lebron", sobrenome: "James")

var empresaRJ = Cracha.init(setor: "Cloud", funcao: "Desenvolvedor", polo: "Rio de Janeiro", nome: "Carmelo", sobrenome: "Antony")

var empresaBH = empresaRJ

empresaRJ.polo = "Bahia"

empresaSP.fullname
empresaRJ.fullname
empresaSP.getSetor()
empresaRJ.getSetor()


import UIKit

var str = "Hello, playground"

var count = 1
//while - a condição precisa ser verdadeira para poder entrar
while count < 7 {
    print(count)
    count += 1
    
    if count == 10 {
        break
    }
}

//repeat - ele executa e depois verifica a condição para verificar se executa novamente
repeat {
    print(count)
    count += 1
} while count < 7



import UIKit

// 1) Se a seguinte declaração fosse chamada, qual seria o resultado?
var state = true

if state == true {
    print("Allow access")
} else {
    print("Deny access")
}

// O resultado será "Allow access, porque esta sendo atribuido um valor Bool de true, caso o valor seja alterado para False, o código iria entrar no ELSE"

// 2) Crie uma loop e use de condições para saber se o numero é par ou ímpar, dado a essa varialvel:
var arrayNumber: Array = [1,2,3,4,5,6,7,8,9,10]
 for i in arrayNumber {
    if (i % 2 == 0) {
        print("\(i): é par")
 }else{
        print("\(i): é ímpar")
    }
}

// 3) Tente fazer o mesmo exercicio 2, porém com while

var arrayDeNumber: Int = 10
while (arrayDeNumber < 11) {
    arrayDeNumber += 1
    if arrayDeNumber % 2 == 0 {
        break
    }
}

//Usando o Repeat
var arrayN: Int = 10
repeat {
        print(arrayN)
        arrayN -= 1
    } while arrayN % 2 == 0


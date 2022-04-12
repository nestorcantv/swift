import UIKit

func canThrowErrors()throws{
    
}
do{
   try canThrowErrors()
    //Si llegamos aquí no hubo errores
}catch{
    //Si llegamos aquí ha habido errores
}

//Assert. Una aserción comprueba, en modo debug que, una condición sea verdadera. En el momento en que la condición es falsa se abre el mensaje del assert y para la ejecución
let age = 29
assert(age > 0, "La edad de una persona no puede ser negativa")

//Precondition es prácticamente similiar al assert con la diferencia de que sigue funcionando aún en producción.
precondition(age > 0, "La edad no puede ser menor a 0")

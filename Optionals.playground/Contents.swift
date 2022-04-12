import UIKit

let posibleAge = "31"
//Ejemplo de Casting
let convertedAge = Int(posibleAge)//Int?


//Ejemplo de un force unwrapping
if convertedAge != nil {
    print("convertedAge no está vacío y su valor es: \(convertedAge!)")//Con el signo "!" forzamos a usar ese dato
}else{
    print("convertedAge está vacío")
}


//Optional binding. Una maneras más segura de usar un valor que no es nil
if let ageToUse = convertedAge {
    print("La edad es \(ageToUse)")
}


//Casting y optional Binding de una constante
let numeroX = "3"
let posibleNumber = Int(numeroX)
if let number = posibleNumber {
    print("El casting de posibleNumber si se pudo hacer y su valor es: \(number)")
}

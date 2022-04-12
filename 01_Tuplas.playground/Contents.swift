import UIKit

let http404Error = (404, "Página no encontrada")
let (statusCode,statusMessage) = http404Error
print("\(statusCode)")
let http200Status = (statusCode: 200,statusMessage: "Conectado")
print(http200Status.statusMessage)
let anotherTupla = ("Néstor","Moreno")
print("\(anotherTupla.0)")

let nestorInformation = (nombre: "Néstor", edad: 29)
print("Hola soy \(nestorInformation.nombre) y tengo \(nestorInformation.edad)")

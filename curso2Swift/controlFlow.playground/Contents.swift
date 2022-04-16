import UIKit

//El ciclo for es una buena herramienta para recorrer arreglos

let names: [String] = ["Néstor", "Auro", "Eliseo"]
for name in names{
    print("Hola \(name)! Bienvenido")
}

let animalLegs: [String: Int] = ["Araña": 8, "perro": 4, "Gato": 4]
for (name, legs) in animalLegs{
    print("\(name) tiene \(legs) patas")
}

for idx in 1...10{
    print("5 x \(idx) es \(idx * 5)")
}

func potencia(base b: Int,potencia p: Int )-> Int{
    var resultado = b
    for _ in 1..<(p){
        resultado = resultado * b
    }
        return resultado
}
print(potencia(base: 2, potencia: 4))

//Bucle while. Mientras una condición sea verdadera se ejecutará el código. Necesitamos hacer que el bucle tenga fin, si no se seguiría ejecutando indefinidamente.


let idealTempeture = 20
var tempeture = Int.random(in: 0...30)
if tempeture == idealTempeture{
    print("Que buen clima!")
}else if tempeture >= idealTempeture{
    print("Temperatura: \(tempeture)")
    while tempeture > idealTempeture{
        print("temperatura actual \(tempeture)")
        tempeture -= 1
    }
}else{
    print("Temperatura: \(tempeture)")
    while tempeture <= idealTempeture{
        
        print("temperatura actual \(tempeture)")
        tempeture += 1
    }
}





let listaDeArtículos: [String: Int] = ["Camisa": 100, "Pantalón": 250, "Bufanda": 150, "zapatos": 400]




func crazyBuy(Presupuesto m: Int){
    var moneyInPocket = m
    var compras = [String]()
    print("Su saldo es: \(moneyInPocket)")
    
        while moneyInPocket > 0{
                for (item, value) in listaDeArtículos{
                    if moneyInPocket > value {
                        print("Usted a comprado -\(item)- $\(value)|| \(moneyInPocket) - \(value), saldo:  \(moneyInPocket - value)")
                        moneyInPocket -= value
                        compras.append(item)
                    }
                }
        }
}
crazyBuy(Presupuesto: 500)

//Repeat while lo que hace, es al menos ejecutar el código una vez aunque la condición sea falsa

//var i = 0
//while i <= 10{
//    print(i)
//    i += 1
//}
//repeat {
//    i += 1
//    print(i)
//}while i <= 10

//Uso de switch
let someCharacter: String = "Z".lowercased()
switch someCharacter{
    case "a":
        print("Es la primer letra del abecedario")
    case "z":
        print("Es la última letra del abecedario")
    default:
        print("No es la primera ni la última letra")
}

//Uso de switch con rangos
let someInt = Int.random(in: -5...5)
switch someInt{
    case 0 :
        print("Tu número es 0")
    case ...(-1) :
        print("Tu número ese negativo")
    case 1... :
        print("Tu número es positivo")
    default:
        print("No hay numeros")
}


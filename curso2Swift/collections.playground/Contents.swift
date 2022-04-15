import UIKit

/*Las colecciones se dividen en 3 grupos:
 arrays
 Conjuntos o Sets
 Diccionarios
 */

//Se crea un array vacío
var someArray = [String]()


//Se añade con el .append mas elementos al arreglo
someArray.append("Hola")
someArray.count


//Se vacía el array asignándole [] vacío
someArray = []
someArray.count

//Se crea un objeto de la clase "Array" y se utiliza este método para repetir
var someDoublesArray = Array(repeating: 3.0, count: 5)
someDoublesArray.count
var someLetters = Array(repeating: "Hola", count: 5)
someLetters.append("Hello")
//Con += añadimos uno o mas objetos a nuestro array
someLetters += ["Bonjour", "Ni jao"]

//Se pueden concatenar arrays




let listaDeCompras: Set = ["frijoles", "zanahoria", "leche", "deshodorante", "crema"]
var carritoDeCompras: Set = ["frijoles", "zanahoria", "leche"]

var cosasFaltantes: [String] = [String](listaDeCompras.subtracting(carritoDeCompras))

// first set
let setA: Set = [2, 3, 5]
print("Set A: ",  setA)

// second set
let setB: Set = [1, 2, 6]
print("Set B: ",  setB)

// perform subtraction operation
print("Subtraction: ", setA.subtracting(setB))


func missingItems(){
for item in 0..<cosasFaltantes.count{
    print("\(item + 1). \(cosasFaltantes[item])")
}
}
missingItems()

//Recorremos un arreglo con una tupla utilizando "enumerated()"

for (panaIndex, articulo) in listaDeCompras.enumerated(){
    print("\(panaIndex + 1). \(articulo)")
}


var anotherSet: Set<Int> = [1, 2, 3, 4]
var anotherSetB: Set<Int> = anotherSet

for n in anotherSetB{
    print(n)
}


//Diccionarios. No hay posiciones sino claves por objeto
//Diccionario vacío
var nameOfIntegers: [Int: String] = [1: "Uno",
                                     2: "Dos",
                                     3: "Tres"
]
nameOfIntegers[4] = "Cuatro"
//Vaciar diccionarios
//nameOfIntegers = [:]
//Eliminamos una clave del diccionario
nameOfIntegers[4] = nil
nameOfIntegers

//Iteración sobre diccionarios
for (key, value) in nameOfIntegers{
    print("\(key) - \(value)")
}
for (key, _) in nameOfIntegers{
    print(key)
}

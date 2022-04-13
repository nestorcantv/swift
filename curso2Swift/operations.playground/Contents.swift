import UIKit

let minAge = 18
let maxAge = 35
var gennyAge = 28
gennyAge > minAge && gennyAge < maxAge ? "Puedes entrar" : "No puedes entrar"



//Operador ternario.
let contentHeight = 40
var hasImage = true
var rowHeights = 0
rowHeights = contentHeight + (hasImage ? 40 : 10)
print(rowHeights)

//Nil coaelsing operator

var userName: String?
var nameToUse =  userName ?? "Default"
print(nameToUse)
 //Rangos


for idx in 1..<5{
    print(idx)
}
let names = ["Aurora", "Néstor", "Eliseo"]
for i in 0..<names.count{
    print("La persona \(i+1) es \(names[i])")
}

let allowEntry = false
if !allowEntry{
    print("¡¡ACCESO DENEGADO!!")
}

import UIKit

var string = "Hello, playground"
var multilineString = """
    Éste es un texto multilinea
    y está rodeado de de tres
    comillas \"\"\" Texto \"\"\"
"""
let einsteinSaid = """
    \"La imaginación es mas importante que el saber\"

                                - Albert Einstein -
"""
print(einsteinSaid)
var mexicanFlag: String = "\u{1F3C1}"
print(mexicanFlag)


var nombreParaCharacter = "Eliseo"
var arrayOfCharacters = [Character]()
for ch in nombreParaCharacter{
    arrayOfCharacters.append(ch)
    print(ch)
}
var newName = String()
for ch in 0..<arrayOfCharacters.count{
    newName.append(arrayOfCharacters[ch])
}


print(newName)
var greeting = "Hola, ¿qué tal?"
print(greeting[greeting.startIndex], terminator: "|")
print(greeting[greeting.index(before: greeting.endIndex)])
greeting.insert(contentsOf: " ¿Cómo estás?", at: greeting.index(before: greeting.endIndex))

print(greeting)
print(greeting[greeting.index(before: greeting.endIndex)])


//El prefijo ayuda a ver si un string empieza con cierto String y retorna un valor booleano.
greeting.hasPrefix("Hola") ? "Que educado!" : "Aprenda a saludar"


//El sufijo nos ayudar a corroborar si alfinal de ese String se encuentra tal String
greeting.hasSuffix("?") ? "Tiene un signo de interrogación" : "No es una pregunta"



import UIKit



class Product{
    var name: String
    var varCode: Int
    var price: Double
    var description: String?
    init(name: String,
         varCode: Int,
         price: Double) {
        self.name = name
        self.varCode = varCode
        self.price = price
    }
    
    func ItemsPrinting(){
        print(self.name)
        print(self.varCode)
        print(self.price)
        if let itemDescription = self.description{
            print(itemDescription)
        }
        
    }
    func specificItem(it: Any){
        print(it)
    }
}
var leche = Product(name: "Leche", varCode: 23424534, price: 20.50)
var arroz = Product(name: "Arroz", varCode: 567252, price: 25.0)
leche.description = "Leche entera"
var products = [Product]()
products.append(leche)
products.append(arroz)



for raw in products{
    raw.ItemsPrinting()
    raw.specificItem(it: raw.price)
}

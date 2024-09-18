//: [Previous](@previous)

import Foundation

enum FruitType: String {
    case pisang
    case mangga
    case apel
}

class Fruit {
    var typeFruit: FruitType
    var stockFruit: Int
    
    init(typeFruit: FruitType, stockFruit: Int) {
        self.typeFruit = typeFruit
        self.stockFruit = stockFruit
    }
    
    func addStock (amount: Int){
        stockFruit += amount
    }
    
    func removeStock (amount: Int) {
        if amount > stockFruit {
            print("insuficient stock of \(typeFruit.rawValue) , only \(stockFruit)")
        } else {
            stockFruit -= amount
        }
    }
    func checkStock() {
        print(" \(typeFruit.rawValue) stocknya adalah \(stockFruit)")
    }
}

var buah1 = Fruit(typeFruit: .apel, stockFruit: 80)
buah1.checkStock()
buah1.addStock(amount: 20)
buah1.checkStock()
buah1.removeStock(amount: 10)
buah1.checkStock()

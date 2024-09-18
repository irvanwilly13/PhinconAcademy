//: [Previous](@previous)

import Foundation

enum StockError: Error {
    case outOfStock
    case invalidQuantity
    case stockOverflow
}

class Inventory {
    var stock: Int
    let maxCapacity: Int
    
    init(stock: Int, maxCapacity: Int) {
        self.stock = stock
        self.maxCapacity = maxCapacity
    }
    
    func addStock(_ quantity: Int) throws {
        guard quantity > 0 else {
            throw StockError.invalidQuantity
        }
        
        guard stock + quantity <= maxCapacity else {
            throw StockError.stockOverflow
        }
        
        stock += quantity
    }
    
    func removeStock(_ quantity: Int) throws {
        guard quantity > 0 else {
            throw StockError.invalidQuantity
        }
        
        guard stock >= quantity else {
            throw StockError.outOfStock
        }
        
        stock -= quantity
    }
    
    func currentStock() -> Int {
        return stock
    }
}

let inventory = Inventory(stock: 50, maxCapacity: 100)

// Contoh penambahan stok
do {
    try inventory.addStock(60) // Ini akan memicu stockOverflow // jika diatas 100 maka Erroe: penambahan stok melebihi kapasitas maksimum, karena max capacitynya adalah 100
    print("Stok setelah penambahan: \(inventory.currentStock())")
} catch StockError.invalidQuantity {
    print("Error: Kuantitas tidak valid.")
} catch StockError.stockOverflow {
    print("Error: Penambahan stok melebihi kapasitas maksimum.")
} catch {
    print("Error: Kesalahan tidak terduga.")
}

// Contoh pengurangan stok
do {
    try inventory.removeStock(20) // Mengurangi stok dengan sukses
    print("Stok setelah pengurangan: \(inventory.currentStock())")
} catch StockError.invalidQuantity {
    print("Error: Kuantitas tidak valid.")
} catch StockError.outOfStock {
    print("Error: Stok tidak cukup untuk memenuhi permintaan.")
} catch {
    print("Error: Kesalahan tidak terduga.")
}

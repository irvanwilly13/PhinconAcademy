//: [Previous](@previous)

import Foundation

enum StockError: Error {
    case outOfStock
    case invalidQuantity
}

class StockBarang {
    var stock: [String: Int] = ["Mangga": 10, "apel": 5, "pisang": 7]
    var maxCapacity: Int
    
    init(maxCapacity: Int) {
        self.maxCapacity = maxCapacity
    }
    
    func jualBarang(nama: String, jumlah: Int) throws {
        guard jumlah > 0 else {
            throw StockError.invalidQuantity
        }
        
        guard let currentStock = stock[nama] else {
            throw StockError.outOfStock
        }
        
        guard currentStock >= jumlah else {
            throw StockError.outOfStock
        }
        
        stock[nama] = currentStock - jumlah
        print("\(jumlah) \(nama) berhasil dijual")
        
    }
    
    func cekStock(nama: String) {
        if let currentStock = stock[nama] {
            print("stock \(nama) tersedia \(currentStock)")
        } else {
            print("barang tidak tersedia")
        }
    }
    
    func addStock(name: String, jumlah: Int) throws {
        guard let currentStock = stock[name] else {
            throw StockError.outOfStock
        }
        
        guard currentStock + jumlah <= self.maxCapacity else {
            throw StockError.outOfStock
        }
        
        stock[name] = jumlah + currentStock
        
    }
}

let stockBarang = StockBarang(maxCapacity: 100)


do {
    try stockBarang.jualBarang(nama: "Mangga", jumlah: 5)
    stockBarang.cekStock(nama: "Mangga")
    try stockBarang.addStock(name: "Mangga", jumlah: 70)
    stockBarang.cekStock(nama: "Mangga")

    
//  try stockBarang.jualBarang(nama: "Mangga", jumlah: 7) // ini akan melempar
} catch StockError.invalidQuantity {
    print("Error: jumlah barang tidak valid")
} catch StockError.outOfStock {
    print("Error: stock barang tidak mencukupi atau barang tidak tersedia")
} catch {
    print("Error: tidak dikenal")
}

enum ReservationTypeError: Error {
    case roomUnavailable
    case invalidRoomtype
}

class HotelReservationRoom {
    var room: [String: Int] = ["Single Room": 5,
                               "Double Room": 3,
                               "Suite Room": 2]
    
    func reserveRoom(tipeKamar: String, jumlah: Int) throws {
        guard room[tipeKamar] != 0 else {
            throw ReservationTypeError.invalidRoomtype
        }
        
        guard let availableRooms = room[tipeKamar], availableRooms >= jumlah else {
            throw ReservationTypeError.roomUnavailable
        }
        
        room[tipeKamar] = availableRooms - jumlah
        print("reservasi untuk tipe kamar \(tipeKamar) sebanyak \(jumlah) kamar")
    }
    
    func addRoomStock(tipeKamar: String, jumlah: Int) throws {
        guard let current
    }
}



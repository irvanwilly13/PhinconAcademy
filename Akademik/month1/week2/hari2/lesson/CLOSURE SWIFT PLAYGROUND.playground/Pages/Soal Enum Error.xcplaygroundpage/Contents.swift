//: [Previous](@previous)

import Foundation

enum ReservationTypeError: Error {
    case roomUnavailable
    case invalidRoomtype
}

class HotelReservationRoom {
    var roomStock: [String: Int] = ["Single Room": 5,
                               "Double Room": 3,
                               "Suite Room": 2]
    
    func reserveRoom(tipeKamar: String, jumlahBooking: Int) throws {
        guard roomStock[tipeKamar] != 0 else {
            throw ReservationTypeError.invalidRoomtype
        }
        
        guard let availableRooms = roomStock[tipeKamar], availableRooms >= jumlahBooking else {
            throw ReservationTypeError.roomUnavailable
        }
        
        roomStock[tipeKamar] = availableRooms - jumlahBooking
        print("reservasi untuk tipe kamar \(tipeKamar) sebanyak \(jumlahBooking) kamar")
    }
    
    func cekRoomStock(tipeKamar: String) {
        if let currentStock = roomStock[tipeKamar] {
            print("stock \(tipeKamar) tersedia \(currentStock)")
        } else {
            print("kamar tidak tersedia")
        }
    }
    
    func addRoomStock(tipeKamar: String, jumlah: Int) throws {
        guard let currentStock = roomStock[tipeKamar] else {
            throw ReservationTypeError.invalidRoomtype
        }
        roomStock[tipeKamar] = currentStock + jumlah
        print("stok kamar \(tipeKamar) sudah di tambahkan \(jumlah)")
    }
    
}

let hotel = HotelReservationRoom()

do {
    try hotel.addRoomStock(tipeKamar: "Single Room", jumlah: 5)
    hotel.cekRoomStock(tipeKamar: "Single Room")
    
    try hotel.reserveRoom(tipeKamar: "Single Room", jumlahBooking: 9)
    hotel.cekRoomStock(tipeKamar: "Single Room")
    
    try hotel.reserveRoom(tipeKamar: "Suite Room", jumlahBooking: 5)
    hotel.cekRoomStock(tipeKamar: "Suite Room")
    
} catch ReservationTypeError.invalidRoomtype {
    print("Error: tipe kamar tidak valid")
} catch ReservationTypeError.roomUnavailable {
    print("Error: kamar tidak tersedia")
} catch {
    print("Error: tidak diketahui")
}

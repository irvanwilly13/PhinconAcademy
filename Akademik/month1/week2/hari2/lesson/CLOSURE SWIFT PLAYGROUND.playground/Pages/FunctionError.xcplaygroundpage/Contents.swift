//: [Previous](@previous)

import Foundation

// MARK: LANGKAH PENANGANAN EROR
// MEMBUAT ENUM

enum TypeError: Error {
    case divisionByZero
}

func bagi(num1: Double, pembagi: Double) throws -> Double {
    guard pembagi != 0 else {
        throw TypeError.divisionByZero
    }
    let hasil = num1 / pembagi
    return hasil
}

do {
    let hasil = try bagi(num1: 10, pembagi: 0)
    print("hasilnya adalah \(hasil)")
} catch TypeError.divisionByZero {
    print("Error: Tidak bisa membagi dengan nol")
} catch {
    print("Error: Tidak dikenal")
}



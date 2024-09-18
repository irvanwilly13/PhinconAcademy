//: [Previous](@previous)

import Foundation

// 6. BUATLAH FUNGSI YANG MEMILIKI PARAMETER DENGAN ENUM DAN MEMILIKI RETURN


enum Cuaca {
    case panas
    case cerah
    case mendung
    case hujan
    case badai
}

func checkCuaca(cuaca: Cuaca) -> String {
    switch cuaca {
    case .panas:
        return "cuaca hari ini panas"
    case .cerah:
        return "cuaca hari ini cerah"
    case.mendung:
        return "cuaca hari ini mendung"
    case.hujan:
        return "cuara hari ini hujan"
    case.badai:
        return "cuaca hari ini badai"
    }
}

let cuacaSekarang = checkCuaca(cuaca: .panas)
print(cuacaSekarang)

let cuacaSekarang1 = checkCuaca(cuaca: .badai)
print("laporan cuaca hari selasa 17 september \(cuacaSekarang1)")



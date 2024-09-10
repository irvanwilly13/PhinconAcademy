//: [Previous](@previous)

import Foundation

let nilai = 7


switch nilai {
case 1:
    print("nilai adalah 1")
case 2:
    print("nilai adalah 2")
case 3:
    print("nilai adalah 3")
case 7:
    print("nilai adalah 7")
case 10:
    print("nilai adalah 10")
default:
    print("nilai tidak diketahui")
}

// ==================================================================

// contoh switch case

var hasilPeserta = 90

switch hasilPeserta {
case 0..<60:
    print("Tidak lulus")
case 60..<70:
    print("Cukup")
case 70..<80:
    print("Baik")
case 80..<90:
    print("bagus")
case 90...100:
    print("Sangat Bagus")
default:
    print("Nilai tidak di ketahui")
}

//=====================================================================

enum Cuaca {
    case cerah
    case hujan
    case berawan
}

let hariIni = Cuaca.cerah

switch hariIni {
case .cerah:
    print("Cuaca Cerah")
case .hujan:
    print("Cuaca Hujan")
case .berawan:
    print("Cuaca Berawan")
}
// default tidak perlu ditulis, karena semua case sudah tercantum

enum MatOperator {
    case tambah
    case minus
    case kali
    case bagi
}

let operatorMat: MatOperator = .kali
var nilai1 = 10
var nilai2 = 20
var nilai3 = 30

switch operatorMat {
case .tambah:
    var total = nilai1 + nilai2 + nilai3
    print("hasil dari pertambahan adalah \(total)")
case .minus:
    var total = nilai1 - nilai2 - nilai3
    print("hasil dari pengurangan adalah \(total)")
case .kali:
    var total = nilai1 * nilai2 * nilai3
    print("hasil dari perkalian adalah \(total)")
//case .bagi:
//    var total = nilai1 / nilai2 / nilai3
//    print("hasil dari pembagian adalah \(total)")
default:
    print("Operasi tidak tersedia")
    
}
//: [Next](@next)

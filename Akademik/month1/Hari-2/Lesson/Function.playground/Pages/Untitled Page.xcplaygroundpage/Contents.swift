//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

enum MatOperator {
    case tambah
    case minus
    case kali
    case bagi
}

func kalkulator (_ num1: Int, _ num2: Int, _ num3: Int, type operatorMat: MatOperator) -> Int {
// _ digunakan untuk mempermudah hasil Int yang di inginkan dalam variabel jumlah

    let operatorMat: MatOperator = operatorMat
    var nilai1 = num1
    var nilai2 = num2
    var nilai3 = num3

    switch operatorMat {
    case .tambah:
        var total = nilai1 + nilai2 + nilai3
        return total                            // penggunaan return tidak perlu ada print, print di gunakan di akhir
    case .minus:
        var total = nilai1 - nilai2 - nilai3
        return total
    case .kali:
        var total = nilai1 * nilai2 * nilai3
        return total
    case .bagi:
        var total = nilai1 / nilai2 / nilai3
        return total
    }
}

var jumlah = kalkulator(12,13,45,type: .tambah) // diperlukan variabel untuk return
print(jumlah)

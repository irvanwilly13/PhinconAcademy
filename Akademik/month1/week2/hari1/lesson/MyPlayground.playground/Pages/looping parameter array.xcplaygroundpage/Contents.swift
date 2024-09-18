//: [Previous](@previous)

import Foundation

// 9. BUATLAH FUNGSI YANG ADA LOOPINGNYA DAN PARAMETERNYA DARI ARRAY


// MARK: LOOPING DAN PARAMETERNYA TERDIRI DARI ARRAY
// PARAMETER BISA DI ISI DENGAN APAPUN ""
func checkTampilkanNama(data:[String]) {
    for (index, i) in data.enumerated() {
        print("data ke \(index) = \(i)")
    }
}

let array1 = ["irvan", "willy", "tulang", "besi"]

checkTampilkanNama(data: array1)

func checkAbsensiUrutan(number:[Int]) {
    for (index, item) in number.enumerated() {
        print("data ke \(index) adalah urutan ke \(item)")
    }
}

let absensi = [1,2,3,4,5,6,7,8,9]

checkAbsensiUrutan(number: absensi)

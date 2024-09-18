//: [Previous](@previous)

import Foundation

// 5. BUATLAH FUNGSI DENGAN PARAMETER YANG MENGHASILKAN RETURN
// FUNGSI ADA UNSUR SWITCH CASE ATAU IF ELSE

func checkUmur(age: Int) -> Int {
    if age > 30 {
        print("dia sudah dewasa")
        return age
    } else if age > 17 && age < 30 {
        print("dia sudah remaja")
        return age
    } else {
        print("dia belum dewasa")
        return age
    }
}

checkUmur(age: 20)

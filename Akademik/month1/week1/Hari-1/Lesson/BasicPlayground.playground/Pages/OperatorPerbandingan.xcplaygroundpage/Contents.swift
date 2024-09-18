//: [Previous](@previous)

import Foundation

// MARK: operator ==

var age: Int = 15
var kartuKeluarga: String? = "1378468273652347"

age = 19

var isQualification: Bool = age >= 17 && kartuKeluarga != nil // logika &&, ||. && digunakan ketika semua true
var gender: String = "Perempuan"



if isQualification || gender == "LakiLaki" {
    isQualification = true
    if isQualification {
        print("boleh bikin KTP")
    }
} else {
    print("belum boleh bikin KTP")
}


//: [Next](@next)

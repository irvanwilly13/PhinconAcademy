//: [Previous](@previous)

import Foundation
// quiz 1

let bilangan = 5
if bilangan >= 5 {
    print("Bilangan positif")
} else if bilangan < 5 {
    print("bilangan Negatif")
} else {
    print("maka bilangan nol")
}

// ====================================================================

// quiz 2

let fahrenheit = 98.6
let celcius = (fahrenheit - 32) * 5/9
print(celcius)




// ====================================================================



// quiz 3


var name: String? = nil
name = "dika"
name = nil
if let displayName =  name {
    print("hello \(displayName)")
} else {
    print("Nama tidak Tersedia")
}



// =====================================================================



// quiz 4


var nilai1 = 5
var nilai2 = 10

if nilai1 < nilai2 {
    print("nilai \(nilai2) adalah nilai yang terbesar")
} else if nilai1 > nilai2 {
    print("nilai \(nilai1) adalah yang terbesar")
} else {
    print("nilai tidak ada yang terbesar")
}



// =====================================================================



// quiz 5


var hasil1 = 5
var hasil2 = 10
var operatorMat = "+"
operatorMat = "*"

if operatorMat == "+" {
    var total = hasil1 + hasil2
    print("jumlah pertambahannya adalah \(total)")
} else if operatorMat == "-" {
    var total = hasil1 - hasil2
    print("jumlah pengurangannya adalah \(total)")
} else if operatorMat == "*" {
    var total = hasil1 * hasil2
    print("jumlah perkaliannya adalah \(total)")
} else if operatorMat == "/" {
    var total = hasil1 / hasil2
    print("jumlah pembagiannya adalah \(total)")
} else {
    print("operatorMat tidak tersedia")
}

// =========================================================================

// quis 6


var nilaiPeserta = 89
nilaiPeserta = 56 // nilai perubahan

if nilaiPeserta >= 90 {
    print("Maka nilai bagus sekali")
} else if nilaiPeserta >= 80 && nilaiPeserta < 90 {
    print("Maka nilai Cukup Bagus")
} else if nilaiPeserta >= 70 && nilaiPeserta < 80 {
    print("Maka nilai Bagus")
} else if nilaiPeserta >= 60 && nilaiPeserta < 70 {
    print("Nilai biasa aja")
} else {
    print("Nilai jelek")
}
//: [Next](@next)

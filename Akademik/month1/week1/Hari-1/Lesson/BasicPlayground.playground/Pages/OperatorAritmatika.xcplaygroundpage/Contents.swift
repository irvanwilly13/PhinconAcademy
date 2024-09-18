//: [Previous](@previous)

import Foundation

var nilai1 = 30
var nilai2 = 20
var nilai3 = 10

let plus = nilai1 + nilai2 + nilai3 // hasil penjumlahan
let minus = nilai1 - nilai2 - nilai3 // hasil pengurangan

let perkalian = nilai1 * nilai2 * nilai3 // hasil perkalian
let perkalianKoma = Double(nilai3) * 14.7 // hasil perkalian koma, nilai dijadikan double

print("jumlah pertambahan adalah \(plus)") // hasil penjumlahan

print("jumlah pengurangan adalah \(minus)") // hasil pengurangan

print("jumlah pertambahan adalah \(perkalianKoma)") // hasil pertambahan koma

let jumlah = nilai1 * (nilai2 / nilai3) // hasil prioritas yang di dalam ( )
print("hasil adalah: \(Int(jumlah))") // hasil prioritas

let phi = 3.14
var jarijari = 40

let kelilingLingkaran: Double = 2 * phi * Double(jarijari)
print("hasil keliling Lingkarang \(Float(kelilingLingkaran))")


let luasLingkaran: Double = phi * Double(jarijari * jarijari)
print("hasil Luas Lingkaran adalah \(Int(luasLingkaran))") // jika hasil dibelakang koma adalah 0, maka dapat menggunakan Int




//: [Next](@next)

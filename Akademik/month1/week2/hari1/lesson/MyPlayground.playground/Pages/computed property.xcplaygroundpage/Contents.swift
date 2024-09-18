//: [Previous](@previous)

import Foundation


// 7. BUATLAH VARIABEL DENGAN COMPUTED PROPERTY

func hitungPersegiPanjang(panjang: Double, lebar: Double) -> (luas: Double, keliling: Double) {
    let luas = panjang * lebar
    let keliling = 2 * (panjang + lebar)
    return (luas, keliling)
}

let hasil = hitungPersegiPanjang(panjang: 20.0, lebar: 10.0)
print("Luas persegi panjang adalah \(hasil.luas)")
print("Keliling persegi panjang adalah \(hasil.keliling)")

let hasil2 = hitungPersegiPanjang(panjang: 22.5, lebar: 13.2)
print("Luas persegi panjang adalah \(hasil2.luas)")
print("Keliling persegi panjang adalah \(hasil2.keliling)")

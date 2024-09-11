//: [Previous](@previous)

import Foundation
// MARK: FUNGSI PENJUMLAHAN

func sum (a: Int, b: Int) -> Int { // pengembalian ingin dijadikan berupa Int
    return a + b
}

let hasil = sum(a: 20, b: 15)
print("hasil dari penjumlahan adalah \(hasil)")

// ===========================================
// MARK: FUNGSI RETURN SWITCH CASE

enum MatOperator {
    case tambah
    case kurang
    case kali
    case bagi
}

func kalkulator (num1: Int, num2: Int, num3: Int, typeOperatorMat: MatOperator) -> Int {
   
    var nilai1 = num1
    var nilai2 = num2
    var nilai3 = num3
    var total = 0

    switch typeOperatorMat {
    case .tambah:
        total = nilai1 + nilai2 + nilai3
    case .kurang:
        total = nilai1 - nilai2 - nilai3
    case .kali:
        total = nilai1 * nilai2 * nilai3
    case .bagi:
        total = nilai1 / nilai2 / nilai3
    }
    return total // return ditempatkan di bawah case (agar tidak menulis return di setiap case)
}

var hasil1 = kalkulator(num1: 15, num2: 14, num3: 13, typeOperatorMat: .tambah)
print(hasil1) // nama variabel tidak boleh sama

// ============================================================================================

// MARK: FUNGSI SWITCH CASE
enum TypeBulan {
    case januari
    case maret
    case mei
    case juli
    case september
    case november
}

func checkBulan (typeBulan: TypeBulan) {
    switch typeBulan {
    case .januari:
        print("sekarang bulan Januari")
    case .maret:
        print("sekarang bulan maret")
    case .mei:
        print("sekarang bulan mei")
    case .juli:
        print("sekarang bulan juli")
    case .september:
        print("sekarang bulan september")
    case .november:
        print("sekarang bulan november")
    }
}

checkBulan(typeBulan: .mei)

// ===========================================================
// MARK: FUNGSI RETURN ELSE IF

func checkTemperature(suhu temperature: Int) -> String {
    if temperature > 30 {
        return "maka suhu ruangan sangat panas"
    } else if temperature > 25 && temperature < 30 {
        return "maka suhu ruangan panas"
    } else if temperature > 20 && temperature < 25 {
        return "maka suhu ruangan dingin"
    } else {
        return "maka suhu ruangan sangat dingin"
    }
}

var tesTemperature = (checkTemperature(suhu: 23))
print(tesTemperature)

// =============================================================

enum StatusPengiriman {
    case belumDikirim
    case sedangDikirim
    case terkirim
    case gagal
}

func cekStatusPengiriman (_ status: StatusPengiriman) -> String {
    var statusText = ""
    switch status {
    case .belumDikirim:
        statusText = "barang belum dikirim"
    case .sedangDikirim:
        statusText = "barang sedang dikirim"
    case .terkirim:
        statusText = "barang sudah dikirim"
    case .gagal:
        statusText = "barang gagal dikirim"

    }
    return statusText
}
var statusBarang = (cekStatusPengiriman(.gagal))
print(statusBarang)

// =================================================================

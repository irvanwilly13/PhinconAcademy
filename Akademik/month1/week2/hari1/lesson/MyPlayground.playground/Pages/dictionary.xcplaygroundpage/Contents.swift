//: [Previous](@previous)

import Foundation

// 4. BUATLAH DICTIONARY DENGAN DEFAULT VALUE KEMUDIAN MANIPULASI DATANYA
// > MENGGUNAKAN APPEND REMOVE FILTER COUNT DLL

var airportDictionary = [String: Any]()

airportDictionary["CGK"] = "Jakarta Airport"
airportDictionary["DUB"] = "Dublin Airport"

if let airport = airportDictionary["CGK"] as? String { // pengecekan variabel opsional WAJIB OPSIONAL
    print(airport)
} else {
    print("Tidak ditemukan")
}

var negaraBola = [String: String]()
negaraBola["IDN"] = "Indonesia"
negaraBola["MYR"] = "Malaysia"
negaraBola["GBR"] = "GreatBritain"

print(negaraBola["IDN"])
print(negaraBola["MYR"])

for (key, value) in negaraBola {
    print("\(key) adalah \(value)")
}



//: [Previous](@previous)

import Foundation

var parameters: [String: Any] = [:]
parameters["Username"] = "irvan"
parameters["Age"] = 27
parameters["City"] = "jakarta"
parameters["Gender"] = "male"
parameters["IsStudent"] = true

let userName = parameters["Username"] as? String
let age = parameters["Age"] as? Int
print(userName ?? "")
print(age ?? 0)

if let Gender = parameters["Gender"] as? String {
    print(Gender)
} else {
    print("tidak bisa dirubah")
}

// =================================================

class Patient {
    var name: String
    var age: Int
    var bodyTemperature: Double
    var daftarKesehatan: [String, Double] = [:]
    
    init(name: String, age: Int, bodyTemperature: Double, daftarKesehatan: [String: Double]) {
        self.name = name
        self.age = age
        self.bodyTemperature = bodyTemperature
        self.daftarKesehatan = daftarKesehatan
    }
    
    func tampilkanNama() {
        print("Nama pasien: \(self.name), Umur: \(self.age), Suhu tubuh: \(self.bodyTemperature)")
    }
    
    func tampilkanDaftarKesehatan() {
        print("Daftar Kesehatan:")
        for (kondisi, nilai) in daftarKesehatan {
            print("\(kondisi): \(nilai)")
        }
    }
}
    
let pasien1 = Patient(name: "Dony", age: 27, bodyTemperature: 37.4, daftarKesehatan: ["Gula": 100])
pasien1.tampilkanNama()
pasien1.tampilkanDaftarKesehatan()

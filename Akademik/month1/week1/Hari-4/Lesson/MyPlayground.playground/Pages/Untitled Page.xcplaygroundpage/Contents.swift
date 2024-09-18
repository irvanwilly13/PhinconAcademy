//: [Previous](@previous)

import Foundation

class Patient {
    var name: String
    var age: Int
    var bodyTemperature: Double
    var daftarKesehatan: [String: Double]
    
    var contactPatient: [String: String] = [:]
    
    init(name: String, age: Int, bodyTemperature: Double, daftarKesehatan: [String: Double]) {
        self.name = name
        self.age = age
        self.bodyTemperature = bodyTemperature
        self.daftarKesehatan = daftarKesehatan
    }
    
    
    func tampilkanNama() {
        print("Nama pasien: \(self.name), Umur: \(self.age), Suhu tubuh: \(self.bodyTemperature)")
    }
    func searchContactNumber(phone: String) {
        let filteredContacts = contactPatient.filter { $0.value.contains(phone) }
        if filteredContacts.isEmpty {
            print("No contacts found with the phone number containing \(phone).")
        } else {
            for (name, number) in filteredContacts {
                print("\(name): \(number)")
            }
        }
    }
    
    func searchByPrefix(key: String) {
        if let filteredContacts = contactPatient.first(where: { $0.key.lowercased().hasPrefix(key.lowercased()) }) {
            print(filteredContacts)
        }
    }
    
    func addContact(name: String, Phone: String) {
        contactPatient[name] = Phone
    }
    func deleteContact(name: String, Phone:String) {
        contactPatient[name] = nil
    }
    
    
    func tampilkanDaftarKesehatan() {
        print("Daftar Kesehatan:")
        for (kondisi, nilai) in daftarKesehatan {
            print("\(kondisi): \(nilai)")
        }
    }
    func tampilkanContact() {
        print("daftar kontak")
        for (name, phone) in contactPatient {
            print("\(name) : \(phone)")
        }
    }
}

let pasien1 = Patient(name: "Dony", age: 27, bodyTemperature: 37.4, daftarKesehatan: ["Gula": 100])
pasien1.tampilkanNama()
pasien1.tampilkanDaftarKesehatan()
pasien1.addContact(name: "Bene", Phone: "7345687345")
pasien1.addContact(name: "kanu", Phone: "734568734354365")

pasien1.tampilkanContact()
pasien1.searchByPrefix(key: "en")
pasien1.searchByPrefix(key: "Be")

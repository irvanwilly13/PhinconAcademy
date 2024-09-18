//: [Previous](@previous)

import Foundation

// MARK: DICTIONARY

var studentsScore: [String: Int] = [:]  // [:] sebagai DEFAULT
                                        // bisa di gabungkan dengan [String: String] dan sebagainya

studentsScore ["agung"] = 84 // nilai awal
studentsScore ["ramzi"] = 89
studentsScore ["azizi"] = 79

studentsScore ["agung"] = 80 // perubahan nilai
studentsScore ["ramzi"] = 99
studentsScore ["azizi"] = nil // penghapusan data


// looping tanpa key value MELAKAUKAN EKSEKUSI DATA YANG BERULANG
for item in studentsScore {
    print(item.key)
    print(item.value)
}


// looping dengan key value
for (key, value) in studentsScore {
    print("\(key) nilainya \(value)")
}


// menampilkan jumlah data pada dictionary
let jumlahStudents = studentsScore.count
print(jumlahStudents)

// mengecek dictionary apakah ada data atau tidak
let isEmpty = studentsScore.isEmpty

// untuk mengambil semua key di dictionary
let nameStudents = Array(studentsScore.keys)

// untuk mengambil semua value di dictionary
let valueStudents = Array(studentsScore.values)

print(nameStudents)


var parameters: [String: Any] = [:]

parameters["Username"] = "agus"
parameters["Age"] = 27
parameters["BodyWeight"] = 79.9
parameters["BodyHeight"] = 180
parameters["isStudent"] = true

let userName = parameters["Username"] as? String
let age = parameters["Age"] as? Int
print(userName ?? "")
print(age ?? 0)

if let bodyWeight = parameters["BodyWeight"] as? Int {
    print(bodyWeight)
} else {
    print("tidak bisa dirubah")
}

// MARK: LATIHAN SOAL DICTIONARY

// 1. buat semua nama dan nomor dari soal
// 2.

var contactPhone: [String: String] = [:]

contactPhone ["John Doe"] = "08123456789"
contactPhone ["kaka"] = "08198765432"
contactPhone ["zidan"] = "0818769245"


for (n, p) in contactPhone {
    print("nomor telephone \(n) adlah \(p) ")
}

contactPhone ["John Doe"] = nil // penghapusan contact dengan nama john doe

let filteredContact = contactPhone.filter {$0.key.hasPrefix("k") }
print(filteredContact)

// fungsi untuk mencari kontak dengan nama
func searchContact(name: String) {
    let filteredContact = contactPhone.filter { $0.key == name }
    
    for (name, number) in filteredContact {
        print("\(name): \(number)")
    }
}


func searchContactNumber(phone: String) {
    let filteredContact = contactPhone.filter {$0.value.contains(String(phone)) }
    
    for (name, number) in filteredContact {
        print("\(name): \(number)")
    }
}

// fungsi untuk menambahkan kontak
func addContact(name: String, Phone: String) {
    contactPhone[name] = Phone
}

// fungsi untuk delete kontak
func deleteContact(name: String, Phone:String) {
    contactPhone[name] = nil
}

// fungsi untuk menggedit kontak, sama dengan mengedit kontak
func editContact(name: String, Phone: String) {
    contactPhone[name] = Phone
}

// fungsi untuk mencari kontak dengan ByPrefix, mencari nama dengan beberapa huruf saja
func searchByPrefix(key: String) {
    let filteredContact = contactPhone.filter { $0.key.contains(key.lowercased()) }
    for (name, number) in filteredContact {
        print("\(name): \(number)")
    }
}

searchContact(name: "zidan") // cara mencari kontak dengan nama
addContact(name: "milan", Phone: "230987459283") // menambah kontak
editContact(name: "zohan", Phone: "8892358977") // mengedit kontak sama dengan menambahkan kontak
searchByPrefix(key: "ila" ) // mencari kontak dengan beberapa kata
searchByPrefix(key: "dan" ) //  mencari kontak dengan beberapa kata
searchContactNumber(phone: "358") // mencari kontak degan beberapa nomor

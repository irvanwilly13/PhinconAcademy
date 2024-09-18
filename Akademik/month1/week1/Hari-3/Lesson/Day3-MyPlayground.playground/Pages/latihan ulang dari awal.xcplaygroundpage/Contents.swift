
import Foundation
// MARK: VARIABEL
var greeting: String = "hello"
print("\(greeting) nama saya irvan")

let age: Int = 27
print ("umur saya \(age) tahun")

// ==========================================================================================================================

// MARK: ARRAY STRING

var persons: [String]
persons = ["Abdul", "Hamid", "Daud"]
print(persons)

// menghapus semua elemen
persons.removeAll()
print(persons)

// APPEND menambahkan 1 elemen
persons.append("Dimas")
print(persons)

let persons1: [String]
persons1 = ["Azizi", "Jaka"]
print(persons1)

persons .append(contentsOf: persons1) // menambahkan var persons dengan persons1

// MARK: ARRAY INT

var numbers: [Int] = []
numbers = [2,3,4,5,6,7,8,9]
numbers.append(1)
print(numbers)

var numbers2: [Int] = [11,12,13,14,15,16]
print(numbers2)

numbers.append(contentsOf: numbers2) // menambahkan variabel numbers dengan numbers2 menggunakan contentsOf
print(numbers)

print(numbers.sorted{$0 < $1}) // mensortir number dari kecil ke besar

// FOR IN DILAKUKAN UNTUK MELAKAUKAN EKSEKUSI DATA YANG BERULANG
// memberikan perintah untuk memunculkan item numbers yang habis dibagi 2
for item in numbers.sorted(by: { $0 < $1 }) {
    if Int(item) % 2 == 0 {
        print(item)
    }
}

// MARK: DICTIONARY ADALAH PASANG KEY & VALUE YANG BANYAK JUMLAHNYA SEPERTI STRING, INT, ANY

var studentsScore: [String: Int] = [:]  // [:] sebagai DEFAULT
                                        // bisa di gabungkan dengan [String: String] dan [STRING: ANY] DAN LAIN2

studentsScore ["agung"] = 84 // nilai awal
studentsScore ["ramzi"] = 89
studentsScore ["azizi"] = 79

studentsScore ["agung"] = 80 // perubahan nilai
studentsScore ["ramzi"] = 99
studentsScore ["azizi"] = nil // penghapusan data

for (key, value) in studentsScore {
    print("\(key) nilainya \(value)")
}

let jumlahStudents = studentsScore.count
print(jumlahStudents)

// mengecek dictionary apakah ada data atau tidak
let isEmpty = studentsScore.isEmpty

// untuk mengambil semua key di dictionary
let nameStudents = Array(studentsScore.keys)

// untuk mengambil semua value di dictionary
let valueStudents = Array(studentsScore.values)

print(nameStudents)

// MARK: contoh soal DICTIONARY YANG LAIN

var parameters: [String: Any] = [:] // [:] MENUNJUKKAN NILAI DEFAULT

parameters["Username"] = "agus"
parameters["Age"] = 27
parameters["BodyWeight"] = 79.9
parameters["BodyHeight"] = 180
parameters["isStudent"] = true

let userName = parameters["Username"] as? String
let usia = parameters["usia"] as? Int
print(userName ?? "")
print(usia ?? 0)

if let bodyWeight = parameters["BodyWeight"] as? Int {
    print(bodyWeight)
} else {
    print("tidak bisa dirubah")
}





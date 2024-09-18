//: [Previous](@previous)

import Foundation

var persons: [String]
persons = ["abdul", "halland", "diego"] // array

persons.append("ringgo") // menambahkan hanya 1 elemen

persons.removeAll() // menghapus semua value didalam array
persons.append("ringgo")
let persons1 = ["miku", "poik", "liya"]

persons.append(contentsOf: persons1)
print(persons[2])

var numbers: [Int] = []

numbers.append(4) // () dapat di gunakan ketika menggunakan fungsi dari
numbers.append(12)
numbers.append(9)

// untuk pengecekan apakah array itu ada atau tidak
print(numbers.isEmpty)

// untuk pengecekan berapa banyak jumlah array dalam satu variabel
print(numbers.count)

var numbers2: [Int] = [2,6,7,8,13]

// untuk menambahkan array dalam jumlah yang banyak tipe data harus sama
numbers.append(contentsOf: numbers2)

// untuk mensorted data
print(numbers.sorted{ $0 < $1 })

for item in numbers.sorted{ $0 < $1 } {
    if Int(item) % 2 == 0 {
        print(item)
    }
}

// ============================================================
// MARK: soal ARRAY NILAI SISWA 

var nilaiSiswa: [Int] = [71,59,80,42,90,87,46,70,88,97]
print(nilaiSiswa.count)

func urutanNilai(data: [Int]) -> [Int] {
    return data.sorted{ $0 < $1 }

}

func cekKelulusanNilai(data: [Int]) -> [Int]  {
    let tmp = data.map{$0 + 2} // fungsi map, merubah setiap item seperti contoh di +2
    return tmp.filter{$0 > 60}.sorted{$0 < $1} // fungsi yang di gunakan dapat mensortit hasil berdasarkan keinginan
}

let t = cekKelulusanNilai(data: nilaiSiswa)
print(t)
print(t.count)



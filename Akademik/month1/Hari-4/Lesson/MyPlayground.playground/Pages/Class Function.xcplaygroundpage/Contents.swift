//: [Previous](@previous)

import Foundation

// MARK: class function

class Person {
    var name: String
    var age: Int
    
    var isStudent: Bool = false

    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func displayName() {
        print("nama saya \(self.name) saya berumur \(self.age)")
        if self.isStudent {
            print("saya adalah seorang pelajar")
        } else {
            print("saya bukan seorang pelajar")
        }
    }
    
    func editData (name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let orang1 = Person(name: "irvan", age: 27)

orang1.displayName()
orang1.editData(name: "willy", age: 27)
orang1.isStudent = true
orang1.displayName()

let orang2 = Person(name: "lala", age: 46)
orang2.displayName()

// ===========================================================================================================================

// MARK: COMPUTED VARIABEL

class Circle {
    var radius: Double
    
    var area: Double {
        return Double.pi * radius * radius
    }
    
    var circumference: Double {
        return 2 * Double.pi * radius
    }
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func totalArea() {
        print("total area adalah \(self.area)")
    }
    
    func totalCircumference() {
        print("total keliling adalah \(self.circumference)")
    }
}

let circle = Circle(radius: 20)

circle.totalArea()
circle.totalCircumference()

// ========
class Rectangles {
    var width: Double
    var length: Double
    
    var area: Double {
        return width * length
    }
    
    var perimeter: Double {
        return 2 * (width + length)
    }
    
    init(width: Double, length: Double) {
        self.width = width
        self.length = length
    }
    
    func luasPersegi () {
        print("luasnya adalah \(self.area)")
    }
    
    func kelilingPersegi () {
        print("kelilingnya adalah \(self.perimeter)")
    }
}



let kotak1 = Rectangles(width: 6, length: 5)
kotak1.kelilingPersegi()
kotak1.luasPersegi()
// =====================================================

enum OperasiCalculator: String {
    case tambah
    case kurang
    case kali
    case bagi
}

class Calculator {
    var num1: Double
    var num2: Double

    init(num1: Double, num2: Double) {
        self.num1 = num1
        self.num2 = num2
    }
    func hitung(operatorMath: OperasiCalculator) {
        switch operatorMath {
        case .tambah:
            let jumlah = num1 + num2
            print("jumlahnya adalah \(jumlah)")
        case .kurang:
            let jumlah = num1 - num2
            print("pengurannya adlaah \(jumlah)")
        case .kali:
            let jumlah = num1 * num2
            print("jumlah perkaliannya adalah \(jumlah)")
        case .bagi:
            let jumlah = num1 / num2
            print("jumlah pembagiannya adlaah \(jumlah)")
        }
    }
}

let calculator1 = Calculator(num1: 20, num2: 10)
calculator1.hitung(operatorMath: .tambah)

calculator1.hitung(operatorMath: .bagi)

// ===========================================================================================

// MARK: BERBAGAI MACAM CLASS DENGAN FUNC, DICTIONARY, IF ELSE
class Students {
    var name: String
    var usia: Int
    
    var suhu: Double = 24.0
    
    var daftarNilai: [String: Double] = [:]
    
    init(name: String, usia: Int = 0) {
        self.name = name
        self.usia = usia
    }
    
    func tampilkanNama() {
        print("nama saya \(self.name) saya berusia \(self.usia)")
        
    }
    
    func ulangTahun (usia: Int) {
        print("saya berusia \(self.usia + usia)") // parameter self usia milik
    }
    
    func kedewasaan() {
        if self.usia > 23 {
            print("sudah dewasa")
        } else {
            print("belum dewasa")
        }
    }
    
    func checkSuhu (suhu: Double = 24) {
        self.suhu = suhu
        if self.suhu > 30 {
            print("maka suhu badan panas")
        } else if self.suhu > 25 && self.suhu < 30 {
            print("maka suhu badan normal")
        } else {
            print("maka suhu badan dingin")
        }
    }
    
    // MARK: DICTIONARY
    func addNilai(key: String, value: Double) {
        self.daftarNilai[key] = value
    }
    
    func checkJumlahNilai () {
        for (name, value) in self.daftarNilai {
            print("nilainya \(name) adalah \(value)")
        }
            
    }
    
    func searchByPrefix(key: String) {
        let nilai = self.daftarNilai.first { $0.key.contains(key.lowercased()) }
        if let nilai = nilai {
            print("\(nilai.key) adalah \(nilai.value)")
        }
    }
    
    
}

let person1 = Students(name: "Alice", usia: 20)

person1.tampilkanNama()

let person2 = Students(name: "Bob", usia: 25)
person2.tampilkanNama()

let person3 = Students(name: "Charlie", usia: 30)
person3.tampilkanNama()
person3.ulangTahun(usia: 1) // pemanggilan dari luar

person1.kedewasaan()
person2.kedewasaan()
person3.kedewasaan()

person1.checkSuhu(suhu: 26) //
person2.checkSuhu() // karna tidak ada data yang di isi maka dijadikan default

person1.checkJumlahNilai()

person1.addNilai(key: "fisika", value: 89)
person1.checkJumlahNilai()
person1.addNilai(key: "matematika", value: 79)
person1.addNilai(key: "kimia", value: 92)
person1.addNilai(key: "biologi", value: 90)
person1.checkJumlahNilai()

person1.searchByPrefix(key: "biologi")



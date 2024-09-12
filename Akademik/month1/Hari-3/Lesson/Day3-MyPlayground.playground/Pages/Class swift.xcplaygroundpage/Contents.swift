//: [Previous](@previous)

import Foundation


class Persons {
    // MARK: PROPERTI
    var userName: String
    var age: Int
    var isStudent: Bool = false // tidak butuh initialisasi karena sudah ada nilai default
    var daftarNilai: [String: Double] = [
        "Fisika": 98.7,
        "Matematika": 80,
        "kimia": 80.8,
        "Biologi": 87.9
    ]
    
    // initialisasi
    init(userName: String, age: Int = 90) {
        self.userName = userName
        self.age = age
    }
    
    // MARK: METHODE
    func jalanKaki() {
        print("saya bisa jalan kaki")
    }
    
    func tampilkanNama() {
        print("nama saya adalah \(userName) umur saya \(age)")
    }
    
    // Methode yang digunakan untuk mengganti nama
    func editNama(name: String) {
        self.userName = name
    }
    
    func tampilkanNilai() {
        for item in self.daftarNilai {
            print("nilai \(item.key) saya adalah \(item.value)")
        }
    }
    
    func addNilai(key: String, value: Double) {
        self.daftarNilai[key] = value
    }
    
    func searchNilai(key: String) -> Double {
        let nilai = daftarNilai.filter {$0.key.contains(key)}
        let valueNilai = Array(nilai.values).first
        return valueNilai ?? 0.0
    }
    
    func rataRataNilai() -> Double {
        let jumlahNilai = self.daftarNilai.count
        let valueNilai: [Double] = Array(self.daftarNilai.values)
        let sum = valueNilai.reduce(0, +)
        print(jumlahNilai)
        let rataRata =  sum/Double(jumlahNilai)
        return rataRata
    }

}

let persons = Persons(userName: "Angga")
persons.editNama(name: "Bayu")
let nama = persons.userName
print(nama)
persons.jalanKaki()
persons.tampilkanNama()
persons.addNilai(key: "Olahraga", value: 90)
persons.tampilkanNilai()
 let rt = persons.rataRataNilai()
print("rata rata \(rt)")

// ================================================

class Calculator {
    var result: Double = 0.0
    
    func add (a: Double, b: Double) {
        result = a + b
    }
    
    func substract (a: Double, b: Double) {
        result = a - b
    }
    
    func kali (a: Double, b: Double) {
        result = a * b
    }
    
    func bagi (a: Double, b: Double) {
        result = a / b
    }
}

let calculator = Calculator()
calculator.add(a: 10.5, b: 7.3)
print(calculator.result)

calculator.substract(a: 9, b: 5) // hasil dari pengurangan
print(calculator.result)

calculator.add(a: 15, b: 4) // hasil dari penjumlahan
print(calculator.result)

calculator.kali(a: 5, b: 3) // hasil dari perkalian
print(calculator.result)

calculator.bagi(a: 10, b: 2) // hasil dari pembagian
print(calculator.result)

// ========================================

enum StatusTemperature {
    case panas
    case adem
    case sejuk
    case dingin
}

class Temperature {
    
    var suhuTemperature = ""
    
    func cekTemperature(suhu: StatusTemperature = .adem) {
        switch suhu {
        case .panas:
            suhuTemperature = "Ruangan ini panas"
        case .adem:
            suhuTemperature = "Ruangan ini adem"
        case .sejuk:
            suhuTemperature = "Ruangan ini sejuk"
        case .dingin:
            suhuTemperature = "Ruangan ini dingin"
        }
    }
   
    
}

let temperatureRuangan = Temperature()
temperatureRuangan.cekTemperature(suhu: .sejuk)
print(temperatureRuangan.suhuTemperature)

temperatureRuangan.cekTemperature(suhu: .adem)
print(temperatureRuangan.suhuTemperature)


enum StatusPengiriman {
    case belumDikirim
    case sedangDikirim
    case terkirim
    case gagal
}

class Pengiriman {
    var userName: String
    var jumlahProduk: Int
    var beratProduk: [String: Int] = [
        "Semangka": 8,
        "Jeruk": 6,
        "Apel": 12,
        "Pisang": 20
    ]
    var status: StatusPengiriman = .belumDikirim
    
    init(userName: String, jumlahProduk: Int) {
        self.userName = userName
        self.jumlahProduk = jumlahProduk
    }
    
    // untuk menghitung berat produk
    func TotalBerat(produk: String) -> Int? {
        guard let berat = beratProduk[produk] else {
            print("Produk tidak ditemukan")
            return nil
        }
        return berat * jumlahProduk
    }
    
    func tampilkanNama() {
        print("namanya adalah \(userName) mengirirm \(jumlahProduk) produk")
        
    }
    
}


let pengirimanPertama = Pengiriman(userName: "irvan", jumlahProduk: 5)

if let totalBerat = pengirimanPertama.TotalBerat(produk: "Semangka") {
    print("Total berat pengiriman: \(totalBerat) kg")
}
    
// Mengubah status pengiriman
pengirimanPertama.status = .sedangDikirim
print("Status pengiriman: \(pengirimanPertama.status)")


var pengirim = Pengiriman(userName: "irvan", jumlahProduk: 8)
pengirim.tampilkanNama()

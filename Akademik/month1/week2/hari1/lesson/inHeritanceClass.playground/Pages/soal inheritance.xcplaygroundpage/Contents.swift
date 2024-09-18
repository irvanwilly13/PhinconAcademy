//: [Previous](@previous)

import Foundation

class Orang {
    var age: Int = 0
    
    init(age: Int) {
        self.age = age
    }
    
    func changeUmur(age: Int){
        self.age = age
    }
}

class Pelajar: Orang {
    var nama: String
    var jenisKelamin: String
    
    init(nama: String, jenisKelamin: String, age: Int) {
        self.nama = nama
        self.jenisKelamin = jenisKelamin
        super.init(age: age)
    }
}

var person1 = Pelajar(nama: "irvan", jenisKelamin: "pria", age: 27)
print(person1.age)

person1.changeUmur(age: 30)
print(person1.age)


class BangunDatar {
    var luas: Double = 0.0
    
    func hitungLuas() {
        print("luasnya adalah \(luas)")
    }
}

class Persegi: BangunDatar{
    
    var sisi: Double
    
    init(sisi: Double) {
        self.sisi = sisi
    }
    
    override func hitungLuas() {
        self.luas = sisi * sisi
        print("luasnya perseginya adalah \(self.luas)")
    }
}

class Segitiga: BangunDatar {
    
    var alas: Double
    var tinggi: Double
    
    init(alas: Double, tinggi: Double) {
        self.alas = alas
        self.tinggi = tinggi
    }
    
    override func hitungLuas() {
        self.luas = 0.5 * alas * tinggi
        print("luas segitiganya adalah \(self.luas)")
    }
}

let segitiga = Segitiga(alas: 20, tinggi: 10)
segitiga.hitungLuas()


let persegi = Persegi(sisi: 15)
persegi.hitungLuas()






class Hewan {
    var nama: String
    init(nama: String) {
        self.nama = nama
    }
    
    func bersuara() {
        print("hewan bersuara")
    }
}

class Kucing: Hewan {
    var warnaBulu: String
    
    init(nama: String, warnaBulu: String) {
        self.warnaBulu = warnaBulu
        super.init(nama: nama)
    }
    
    override func bersuara() {
        print("kucing bersuara meow, memiliki warna bulu \(self.warnaBulu) dan memiliki nama \(self.nama)")
    }
}

let kucing1 = Kucing(nama: "jordan", warnaBulu: "putih")
kucing1.bersuara()



class Anjing: Hewan {
    var jenisAnjing: String
    
    init(jenisAnjing: String, nama: String) {
        self.jenisAnjing = jenisAnjing
        super.init(nama: nama)
    }
    
    override func bersuara() {
        print("anjing bersuaraa gukguk, memiliki nama \(self.nama) dan berjenis \(self.jenisAnjing)")
    }
}

let Anjing1 = Anjing(jenisAnjing: "Cihuahua", nama: "Joy")
Anjing1.bersuara()






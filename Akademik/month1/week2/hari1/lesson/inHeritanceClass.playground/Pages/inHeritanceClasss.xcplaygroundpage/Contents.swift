//: [Previous](@previous)

import Foundation


// MARK: BASE CLASS
class Mobil {
    var jumlahRoda: Int
    
    init(jumlahRoda: Int) {
        self.jumlahRoda = jumlahRoda
    }
    
    func deskripsi(){
        print("jumlah rodanya adalah \(self.jumlahRoda)")
    }
}

let mobil = Mobil(jumlahRoda: 4)
mobil.deskripsi()

class Merek: Mobil {
    var materialBuild: String
    var transmision: String
    
    init(materialBuild: String, transmision: String, jumlahRoda: Int) {
        self.materialBuild = materialBuild
        self.transmision = transmision
        super.init(jumlahRoda: jumlahRoda)
    }
    
    override func deskripsi() {
        print("mobil dengan \(self.materialBuild) dan dengan transmini \(self.transmision) memiliki jumlah roda \(self.jumlahRoda)")
    }
    
    func gantiJumlahRoda(jumlah: Int) {
        self.jumlahRoda = jumlah
    }
}

let toyota = Merek(materialBuild: "alumunium", transmision: "manual", jumlahRoda: 4) // OBJEK

toyota.gantiJumlahRoda(jumlah: 8) // FUNC GANTI JUMLAH RODA
toyota.deskripsi()

// MARK: UNTUK MEMANGGIL YANG BERADA DI DALAM CLASS, HARUS MEMBUAT DAN SETELAH ITU BISA MEMANGGIL OBJEK LALU DILANJUTKAN DENGAN (.) LALU DI TAMBAHKAN DENGAN FUNCTION YANG DI INGINKAN



// MARK: CLASS STATIC
class Warna {
    static let putih = "4123"
    static let merah = "3412"
    static let hitam = "2341"
    static let kuning = "1234"
    
    private init() {} // digunakan agar ini tidak bisa di gunakan
}

let warna = Warna.hitam
let warna1 = Warna.kuning



class Sepatu {
    var material: String
    var typeIkat: String
    
    init(material: String, typeIkat: String) {
        self.material = material
        self.typeIkat = typeIkat
    }
    
    func checkTypeSepatu() {
        print("sepatu ini menggunakan material \(self.material) dan menggunakan \(self.typeIkat) sebagai pengikatnya")
    }
}

let sepatu = Sepatu(material: "canvas", typeIkat: "tali")
sepatu.checkTypeSepatu()

class MerekSepatu: Sepatu {
    var alasKaki: String
    var lubang: Int
    
    init(alasKaki: String, lubang: Int, material: String, typeIkat: String) {
        self.alasKaki = alasKaki
        self.lubang = lubang
        super.init(material: material, typeIkat: typeIkat)
    }
    
    override func checkTypeSepatu() {
        print("sepatu ini menggunakan material \(self.material) dan menggunakan \(self.typeIkat) sebagai pengikatnya, alas kaki dari \(self.alasKaki) dan memiliki \(self.lubang) lubang sebagai sirkulasi udara")
    }
}

let adidas = MerekSepatu(alasKaki: "Rubber", lubang: 2, material: "canvas", typeIkat: "tali")
adidas.checkTypeSepatu()

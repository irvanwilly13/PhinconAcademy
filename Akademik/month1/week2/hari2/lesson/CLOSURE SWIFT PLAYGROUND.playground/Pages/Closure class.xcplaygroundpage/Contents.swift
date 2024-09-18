//: [Previous](@previous)

import Foundation

class TypeBuah {
    var namaBuah: String
    var warnaBuah: String
    var hargaBuah: Int
    
    init(namaBuah: String, warnaBuah: String, hargaBuah: Int) {
        self.namaBuah = namaBuah
        self.warnaBuah = warnaBuah
        self.hargaBuah = hargaBuah
    }
    
    func checkWarnaBuah() {
        print("buah \(self.namaBuah) berwarna \(self.warnaBuah)")
    }
    
    func checkHargaBuah() {
        print("harganya \(self.hargaBuah)")
    }
    
    func checkNamaBuah(completion: (String) -> Void) {
        print("ini adalah buah \(self.namaBuah)")
        completion(self.namaBuah)
        self.checkHargaBuah()
        self.checkWarnaBuah()
    }
}

let buah1 = TypeBuah(namaBuah: "nanas", warnaBuah: "kuning", hargaBuah: 5000)
buah1.checkNamaBuah() { buah in
    print("buah \(buah)")
}

let buah2 = TypeBuah(namaBuah: "apel", warnaBuah: "merah", hargaBuah: 3000)
buah2.checkNamaBuah() { buah in
    print("buah \(buah)")
}


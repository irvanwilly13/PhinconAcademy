//: [Previous](@previous)

import Foundation

// 8. BAUTLAH VARIABEL DENGAN GETTER SETTER


var beratBadan: Int = 10
var tinggiBadan: Int = 20

var dimensi: Int {
    get {
        return beratBadan * tinggiBadan
    }
    
    set(newValue) {
    tinggiBadan = newValue / beratBadan // melakukan perubahan kepada tinggi badan
    }
}

print(dimensi)

dimensi = 500

print(beratBadan)
print(tinggiBadan)

var jarakKirim: Double = 20
var beratPaket: Double = 5.4

var hargakirim: Double {
    get {
        return jarakKirim * beratPaket * 2000
    }
    
    set(newValue) {
        jarakKirim = newValue / beratPaket * 2000
    }
}

print(hargakirim)
hargakirim = 1800

print(jarakKirim)
print(beratPaket)

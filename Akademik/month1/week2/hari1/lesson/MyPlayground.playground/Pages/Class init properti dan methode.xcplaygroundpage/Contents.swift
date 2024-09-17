//: [Previous](@previous)

import Foundation

class Lingkaran {
    var jariJari: Double
    let phi: Double = Double.pi
    
    init(jariJari: Double) {
        self.jariJari = jariJari
    }
    
    func luasLingkaran() -> Double {
        let luas = self.phi * (jariJari * jariJari)
        return luas
    }
    
    func kelilingLingkaran() -> Double {
        let keliling = 2 * self.phi * jariJari
        return keliling
    }
    
    
}


let lingkaran1 = Lingkaran(jariJari: 214)

print(lingkaran1.luasLingkaran())
print(lingkaran1.kelilingLingkaran())

/*
 class Lingkaran {
     var jariJari: Double
     let phi: Double = Double.pi
     
     init(jariJari: Double) {
         self.jariJari = jariJari
     }
     
     func luasLingkaran(ext: Double) -> Double { // ext merupakan tambahan jika di inginkan, jikta tidak dalam parameter dikosongkan saja
         let luas = self.phi * (jariJari * jariJari)
         return luas + ext
     }
     
     
 }


 let lingkaran1 = Lingkaran(jariJari: 214)

 let luas = lingkaran1.luasLingkaran(ext: 50)

 print(luas)
 */

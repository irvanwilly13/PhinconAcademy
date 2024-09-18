//: [Previous](@previous)

import Foundation

// 3. BUATLAH ARRAY BARU DENGAN DEFAULT VALUE KEMUDIAN MANIPULASI DATANYA
// -> MENGGUNAKAN APPEND REMOVE FILTER COUNT DLL

var animals = ["anjing", "kucing", "kelinci"]

animals.count
print(animals)

animals.append("ikan")
print(animals)

animals.remove(at: 1)
print(animals)

animals.count

for i in animals {
    print(i)
}



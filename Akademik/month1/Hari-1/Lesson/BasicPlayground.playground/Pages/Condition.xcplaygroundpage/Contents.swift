//: [Previous](@previous)

import Foundation

let temperature = 20

if temperature > 25 {
    print("maka suhu ruangan panas")
} else if temperature > 16 && temperature < 25 {
    print("maka suhu ruangan sejuk")
} else {
    print("maka suhu ruangan sangat dingin")
}


let dewasa = 14

if dewasa > 28 {
    print("maka dia sudah dewasa")
} else if dewasa > 18 && dewasa < 28 {
    print("maka dia belum dewasa")
} else {
    print("maka dia masih anak anak")
}

// ====================================================================================

let age = 18
let isAdult = (age >= 18) ? "Adult" : "Not Adult" // penyerdanaan if ( hanyak jika 2 kemungkinan true dan false)

print(isAdult)

let username: String? = nil
let idname =  username ?? "Guest"
print("Welcome \(idname)")

//: [Next](@next)

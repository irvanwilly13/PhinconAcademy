//: [Previous](@previous)

import Foundation

var email: String? = nil // hasil sama dengan nil (value kosong)

if let validEmail = email {
    print("Email: \(validEmail)")
} else {
    print("Email not available")
}

// ======================================================================

var username: String? = nil // nilai value nil (kosong)
username = "malik"
username = nil // Value terkhir nil, jadi 

let displayName = username ?? "Guest" // ?? jika username memiliki isi, maka akan memakai username, jika tidak akan mengisi guest
print("Welcome, \(displayName)")


//: [Next](@next)

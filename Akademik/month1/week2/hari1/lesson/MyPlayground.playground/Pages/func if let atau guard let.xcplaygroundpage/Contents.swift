//: [Previous](@previous)

import Foundation


// if let
func searchContact(name: String?, phone: String?) {
    if let name = name, let phone = phone {
        print("nama kontak \(name), Number phone \(phone)")
    } else {
        print("kontak tidak ada")
    }
}

searchContact(name: "irvan", phone: "082874839451")

// guard let

func findContact(name: String?, phone: String?) {
    guard let name = name, let phone = phone else {
        print("kontak tidak ada")
        return
    }
    
    print("nama kontak \(name), Number phone \(phone)")
}

findContact(name: "willy", phone: nil)

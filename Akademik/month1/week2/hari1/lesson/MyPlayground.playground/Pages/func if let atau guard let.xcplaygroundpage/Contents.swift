//: [Previous](@previous)

import Foundation

func searchContact(name: String?, phone: String?) {
    if let name = name, let phone = phone {
        print("nama kontak \(name), No phone \(phone)")
    } else {
        print("kontak tidak ada")
    }
}

searchContact(name: "irvan", phone: "082874839451")

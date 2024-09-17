//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

enum User {
    case guest
    case registeredUser(name: String, age:Int)
}

let guestUser = User.guest
let registeredUser = User.registeredUser(name: "jhon", age: 20)

switch registeredUser {
case .guest:
    print("welcome, guest")
case .registeredUser(let name, let age):
    print("welcome, \(name), age \(age)")
}

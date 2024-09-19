//: [Previous](@previous)

import Foundation

// serial concurency -> menunggu prosesnya satu satu
// supaya tidak terjadi race condition

//let serialQueue = DispatchQueue(label: "com.example.serial")
//let group = DispatchGroup()
//
//group.enter()
//serialQueue.async {
//    print("task 1")
//}
//
//serialQueue.async {
//    print("task 2")
//}
//
//serialQueue.asyncAfter(deadline: .now() + 4.0) {
//    print("task 3")
//    group.leave()
//}
//
//group.notify(queue: serialQueue) {
//    print("task 4")
//    print("task 5")
//}

// =========================

let mainQueue = DispatchQueue.main

mainQueue.async {
    print("main task 1")
}

let globalQueue = DispatchQueue.global(qos: .background)

globalQueue.async {
    print("global task 1")
}

globalQueue.asyncAfter(deadline: .now() + 2.0) {
    print("global task 2")
}

globalQueue.async {
    print("global task 3")
}

globalQueue.async {
    print("global task 4")
}


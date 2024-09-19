//: [Previous](@previous)

import Foundation

protocol MyProtocol {
    var nama: String {get set}
    var age: Int {get set}
    func myMethode()
    func changeName(name: String)
}

protocol MySecondProtocol {
    func changeAge(age: Int)
}

class Person: MyProtocol, MySecondProtocol {
    var nama: String
    var age: Int
    
    init(nama: String, age: Int) {
        self.nama = nama
        self.age = age
    }
    
    func myMethode() {
        print("test protocol function")
        print("\(self.nama) umur \(self.age)")
    }
    
    func changeName(name: String) {
        self.nama = name
    }
    
    func changeAge(age: Int) {
        self.age = age
    }
}

/*
// extension Person: MyProtocolSecond {
    func changeAge(age: Int) {
        self.age = age
    }
}
*/

let person1 = Person(nama: "agung", age: 16)

person1.changeName(name: "ryan")

person1.changeAge(age: 20)
person1.myMethode()


// ==============================

protocol PersonDelegate {
    func showDescription(name: String)
}


class Parent: MyProtocol {
    var nama: String
    var age: Int
    var delegate: PersonDelegate?
    
    init(nama: String, age: Int) {
        self.nama = nama
        self.age = age
    }
    
    func myMethode() {
        print("test protocol function")
        print("\(self.nama) umur \(self.age)")
    }
    
    func changeName(name: String) {
        self.nama = name
    }
    
    func showName(){
        delegate?.showDescription(name: self.nama)
    }
}

class Child  {

    
    var parent: Parent
    
    init(parent: Parent) {
        self.parent = parent
        self.parent.delegate = self
    }
}

extension Child: PersonDelegate {
    func showDescription(name: String) {
        print(" tesr \(name)")
    }
}

let child = Child(parent: Parent(nama: "budi", age: 67))

child.parent.showName()


// ============================================================================

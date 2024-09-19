//: [Previous](@previous)

import Foundation

protocol MyProtocol {
    var nama: String {get set}
    func myMethode()
    func changeName(name: String)
}

protocol PersonDelegate {
    func showDescription(name: String)
    func myNumber()
}

class Parent: MyProtocol {
    var nama: String
    var delegate: PersonDelegate?
    
    init(nama: String, delegate: PersonDelegate? = nil) {
        self.nama = nama
        self.delegate = delegate
    }
    
    func myMethode() {
        print("test protocol function")
        print("\(self.nama)")
    }
    
    func changeName(name: String) {
        self.nama = name
        delegate?.myNumber()
    }
    
    func showName(){
        delegate?.showDescription(name: self.nama)
    }
    
}

class Child {
    var parent: Parent
    
    init(parent: Parent) {
        self.parent = parent
        self.parent.delegate = self
    }
}

extension Child: PersonDelegate {
    func showDescription(name: String) {
        print("test func \(name)")
    }
    
    func myNumber() {
        print("tes angka")
    }
}

let child = Child(parent: Parent(nama: "irvan"))

child.parent.showName()

child.parent.changeName(name: "wily")

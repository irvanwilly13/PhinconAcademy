//: [Previous](@previous)

import Foundation

class FileManager {
    
    static let shared = FileManager()
    
    private init() {} // PRIVATE ADALAH AKSES LEVEL YANG TIDAK BISA DIGUNAKAN DARI LUAR
    
    var name: String = "Irwan" // WAJIB NILAI DEFAULT
    
    func checkFileAccess(user: String) {
        
        if user == ("rowan") {
            print("Access Granted")
        }
        else {
            print("Access Denied")
        }
    }
}

FileManager.shared.name = "Irwan"

FileManager.shared.checkFileAccess(user: "rowan")

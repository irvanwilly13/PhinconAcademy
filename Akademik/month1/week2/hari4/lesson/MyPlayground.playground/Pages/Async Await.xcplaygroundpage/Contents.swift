//: [Previous](@previous)

import Foundation

//func requestData(from url: URL) async throws -> Data {
//    let (data, _) = try await URLSession.shared.data(from: url)
//    return data
//}
//
//async {
//    do {
//        if let url = URL(string: "https://www.example.com") {
//            let result = try await requestData(from: url)
//            print("data berhasil di dapat \(result)")
//        }
//    } catch let e {
//        print("error \(e)")
//    }
//}


struct TodoModel: Codable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}

func requestData(from url: URL) async throws -> Data {
    let (data, _) = try await URLSession.shared.data(from: url)
    return data
}

Task {
    do {
        if let url = URL(string: "https://jsonplaceholder.typicode.com/todos") {
            let result = try await requestData(from: url)
            print("Data berhasil didapat: \(result)")
            
            // Decode JSON data menjadi struct Todo
            let decoder = JSONDecoder()
            let todo = try decoder.decode([TodoModel].self, from: result)
            
            for item in todo {
                // print hasil decode
                print("Data berhasil di-decode")
                print("User ID: \(item.userId)")
                print("ID: \(item.id)")
                print("Title: \(item.title)")
                print("Completed: \(item.completed)")
            }
        }
    } catch let e {
        print("Error: \(e)")
    }
}

                      

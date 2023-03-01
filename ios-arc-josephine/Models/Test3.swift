//
//  Test3.swift
//  ios-arc-josephine
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/03/01.
//

import Foundation

// MARK: - these are comments


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let test3 = try? JSONDecoder().decode(Test3.self, from: jsonData)

// MARK: - Test3
struct Test3: Codable {
    let isbn: String
    let author, editor: Author
    let title: String
    let category: [String]
}

// MARK: - Author
struct Author: Codable {
    let lastname, firstname: String
}

//
//  Test1.swift
//  ios-arc-josephine
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/03/01.
//

import Foundation
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let test1 = try? JSONDecoder().decode(Test1.self, from: jsonData)

// MARK: - Test1Element
struct Test1Element: Codable {
    let id, type, name: String
    let ppu: Double
    let batters: Batters
    let topping: [Topping]
}

// MARK: - Batters
struct Batters: Codable {
    let batter: [Topping]
}

// MARK: - Topping
struct Topping: Codable {
    let id, type: String
}

typealias Test1 = [Test1Element]

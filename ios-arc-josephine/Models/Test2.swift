//
//  Test2.swift
//  ios-arc-josephine
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/03/01.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let test2 = try? JSONDecoder().decode(Test2.self, from: jsonData)

// MARK: - Test2
struct Test2: Codable {
    let medications: [Medication]
    let labs, imaging: [Imaging]
}

// MARK: - Imaging
struct Imaging: Codable {
    let name: String
    let time: Time
    let location: String
}

enum Time: String, Codable {
    case the1Year = "1 Year"
    case the3Weeks = "3 Weeks"
    case today = "Today"
}

// MARK: - Medication
struct Medication: Codable {
    let aceInhibitors, antianginal, anticoagulants, betaBlocker: [AceInhibitor]
    let diuretic, mineral: [AceInhibitor]
}

// MARK: - AceInhibitor
struct AceInhibitor: Codable {
    let name, strength, dose, route: String
    let sig, pillCount, refills: String
}


func GetJsonData() {
    let fileName = "test2"
    let filePath = "json"
    
    // MARK: Get path
    if let path = Bundle.main.path(forResource: fileName, ofType: filePath) {
        do {
            // MARK: Get data
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            
            // MARK: Decode and display data
            let decode = try JSONDecoder().decode(Test2.self, from: data)
            
            print(Test2.self)
            
//        let jsonObject = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
//                        print(jsonObject)
        } catch {
            print("JSON doesnt exist")
        }
       
    } else {
        return
    }
    
    
}

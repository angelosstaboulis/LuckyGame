//
//  DataManager.swift
//  LuckyGame
//
//  Created by Angelos Staboulis on 7/12/21.
//

import Foundation
import SwiftUI
class DataManager{
    static let shared = DataManager()
    var numbers = RandomNumbers()
    func createRandomArray(completion:@escaping ([Int])->()){
        numbers.numbers.removeAll()
        for _ in 0..<6{
            numbers.numbers.append(Int.random(in: 1..<50))
        }
        completion(numbers.numbers)
    }
}

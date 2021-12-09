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
    private init(){}
    var numbers = RandomNumbers()
    func createRandomArray(completion:@escaping ([Int])->()){
        numbers.numbers.removeAll()
        for _ in 0..<6{
            numbers.numbers.append(Int(arc4random_uniform(50))+1)
        }
        completion(numbers.numbers)
    }
}

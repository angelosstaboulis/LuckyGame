//
//  ViewModel.swift
//  LuckyGame
//
//  Created by Angelos Staboulis on 7/12/21.
//

import Foundation
import SwiftUI
class ViewModel{
    var apishared:DataManager!
    init(){
        apishared = DataManager.shared
    }
    func fetchArrayRandomNumbers(completion:@escaping (([Int])->())){
        return apishared.createRandomArray { array in
            completion(array)
        }
        
    }
}

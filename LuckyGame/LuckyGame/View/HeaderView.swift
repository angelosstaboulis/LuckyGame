//
//  HeaderView.swift
//  LuckyGame
//
//  Created by Angelos Staboulis on 7/12/21.
//

import SwiftUI

struct HeaderView: View {
    @State var header:String
    var body: some View {
        VStack{
            Text(header)
        }
    }
}


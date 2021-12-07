//
//  FooterView.swift
//  LuckyGame
//
//  Created by Angelos Staboulis on 7/12/21.
//

import SwiftUI

struct FooterView: View {
    @State var footer:String
    var body: some View {
        VStack{
            Text(footer).frame(width: 300, height: 55, alignment: .center).background(RoundedRectangle(cornerRadius: 10).foregroundColor(.red))
        }
    }
}


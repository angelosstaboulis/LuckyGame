//
//  ContentView.swift
//  LuckyGame
//
//  Created by Angelos Staboulis on 6/12/21.
//

import SwiftUI

struct ContentView: View {
    @State var numbersModel = ViewModel()
    @State var numbers:[Int]=[0,0,0,0,0,0]
    @State var columns:[GridItem] = [GridItem.init(.adaptive(minimum: 35, maximum: 35), spacing:5, alignment: .center)]
    var body: some View {
        HeaderView(header: "Lucky Game")
        LazyVGrid(columns: columns) {
            ForEach(1..<50){ item in
                Text("\(item)").background((item == numbers[0]) || (item == numbers[1]) || (item == numbers[2]) || (item == numbers[3]) || (item == numbers[4]) || (item == numbers[5]) ? Rectangle().foregroundColor(.green) : Rectangle().foregroundColor(.clear)).frame(width:150,height:150)
            }
            
        }.onAppear {
            numbersModel.fetchArrayRandomNumbers { array in
                numbers = array
            }
        }
        FooterView(footer: "Κλήρωση").onTapGesture {
            numbersModel.fetchArrayRandomNumbers { array in
                numbers = array
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

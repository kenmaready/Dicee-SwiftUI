//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Ken Maready on 7/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var diceOne = 5
    @State var diceTwo = 6
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("diceeLogo")
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Spacer()
                HStack {
                    Die(num: diceOne)
                    Die(num: diceTwo)
                }.padding(.all)
                Spacer()
                Spacer()
                Button(action: {
                    self.diceOne = Int.random(in: 1...6)
                    self.diceTwo = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 48.0))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.all)
                        
                        
                }.background(Color.yellow).cornerRadius(12.0).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

struct Die: View {
    let num: Int
    
    var body: some View {
        Image("dice\(num)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.all)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

//
//  ContentView.swift
//  CardApp
//
//  Created by kenichi kitahara on 2022/11/28.
//

import SwiftUI

struct ContentView: View {
    var cards = ["かばん": "bag",
                 "自動車": "car",
                 "誕生日": "birthday"]
    @State var japanese = "かばん"
    @State var isJapanese = true
    var body: some View {
        ZStack {
            Color(red: 0.97, green: 0.96, blue: 0.56)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                ZStack {
                    Image("card")
                        .resizable()
                        .frame(width: 300.0, height: 133.0)
                        .shadow(radius: 3)
                        .rotation3DEffect(
                            .degrees(isJapanese ? 0 : 180),
                            axis: (x: 0.0, y: 1.0, z: 0.0)
                            )
                        .animation(.spring())
                        .onTapGesture {
                            self.isJapanese.toggle()
                        }
                    Text(isJapanese ? japanese : cards[japanese]!)
                        .font(.largeTitle)
                }.padding()
                HStack {
                    Group {
                        Button(action: {
                            self.isJapanese.toggle()
                        }) {
                            Image(systemName: "arrow.2.circlepath")
                            Text("裏返す")
                        }
                        Button(action: {
                            self.isJapanese = true
                            var jp_value = self.cards
                            jp_value.removeValue(forKey:self.japanese)
                            self.japanese = jp_value.randomElement()!.key
                        }) {
                            Image(systemName: "forward.fill")
                            Text("次へ")
                        }.padding()
                        .foregroundColor(.white)
                        .background(Color(red: 0.86, green: 0.45, blue: 0.03))
                        .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

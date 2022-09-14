//
//  ContentView.swift
//  cw5
//
//  Created by Abdallah Alshemeri on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var Emojis = ["😁","🥹","🤪", "😢","😎","🥶","🤥","😵‍💫","😬","🤒","😡","😳"]
    @State var selectedEmoji = ""
    var body: some View {
        VStack{
        Text("إختر الإيموجي الذي يعبِّر عنك اليوم")
            .font(.title2)
            .bold()
            .padding()
            
        
            Text(selectedEmoji)
                .font(.system(size: 50))
                .padding()
        
            ScrollView(.horizontal){
                HStack{
                ForEach(Emojis, id: \.self){ Emoji in
                    Text("\(Emoji)")
                        .font(.system(size: 50))
                        .frame(width: 70, height: 70)
                        .background(.yellow)
                        .clipShape(Circle())
                        .padding(.top)
                    onTapGesture {
                        selectedEmoji = Emoji
                    }
                    
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

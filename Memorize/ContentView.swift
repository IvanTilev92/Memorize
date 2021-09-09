//
//  ContentView.swift
//  Memorize
//
//  Created by Ivan Tilev on 8.09.21.
//

import SwiftUI

struct ContentView: View {
    
    var emojis = ["🚝", "🛵", "🚜", "🚀"]
    
    var body: some View {
        HStack {
            ForEach(emojis, id: \.self) { emoji in 
                CardView(content: emoji)
            }
        }.padding(.horizontal)
        .foregroundColor(.red)
    }
}

// CardView
struct CardView: View {
    
    var content: String
    
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            
            let shape = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill().foregroundColor(.red)
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

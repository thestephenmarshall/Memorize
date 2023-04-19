//
//  CardView.swift
//  Memorize
//
//  Created by Stephen Marshall on 4/18/23.
//

import SwiftUI

private var cardDownIcon = "🤔"

struct DownIcon: View {
    var icon: String
    
    var body: some View {
        VStack(alignment: .center) {
            Text(icon)
                .font(.largeTitle)
        }
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = true
    var icon: String
    
    var body: some View {
        ZStack(alignment: .center) {
            RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 5)
            if isFaceUp {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Gradient(stops: [
                        Gradient.Stop(color: .pink, location: 0.1),
                        Gradient.Stop(color: .blue, location: 0.45),
                        Gradient.Stop(color: .purple, location: 0.9),
                    ]))
                DownIcon(icon: icon)
            } else {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.blue)
                DownIcon(icon: cardDownIcon)
            }
        }
        .padding(.horizontal, 5)
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(icon: "👽")
    }
}

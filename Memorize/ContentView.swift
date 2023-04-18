//
//  ContentView.swift
//  Memorize
//
//  Created by Stephen Marshall on 4/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .center) {
            RoundedRectangle(cornerRadius: 25)
                .stroke(lineWidth: 7)
            RoundedRectangle(cornerRadius: 25)
                .fill(Gradient(stops: [
                    Gradient.Stop(color: .pink, location: 0.1),
                    Gradient.Stop(color: .blue, location: 0.45),
                    Gradient.Stop(color: .purple, location: 0.9),
                ]))
            VStack(alignment: .center) {
                Image(systemName: "globe")
                    .padding(.bottom, 3.0)
                    .imageScale(.large)
                    .foregroundColor(.white)
                Text("Hello, PlaybookSwift!")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            }
        }
        .padding(.all, 30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

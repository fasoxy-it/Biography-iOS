//
//  ContentView.swift
//  Biography-iOS
//
//  Created by Mattia Fasoli on 12/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                BlurImage(name: "steve", blurRadius: 10)
                
                CircleImage(name: "steve", frameWidth: 100, frameHeight: 100, shadowRadius: 10)
            }
            
            VStack (alignment: .leading) {
                HStack {
                    Image("apple")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    VStack (alignment: .leading) {
                        Text("Steve Jobs")
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("Apple's Founder")
                            .font(.title2)
                    }
                    
                    Spacer()
                }
                .padding(.bottom)
                
                Text("Steven Paul Jobs, detto Steve, è stato un imprenditore, informatico e inventore statunitense. È stato il cofondatore di Apple Inc. e ne è stato amministratore delegato fino al 24 agosto 2011, quando si è dimesso per motivi di salute.")
            }
            .padding()
            
            Spacer()
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

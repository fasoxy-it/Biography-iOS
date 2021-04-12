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
                Image("steve")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .blur(radius: 10, opaque: true)
                
                Image("steve")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
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

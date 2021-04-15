//
//  CircleImage.swift
//  Biography-iOS
//
//  Created by Mattia Fasoli on 15/04/21.
//

import SwiftUI

struct CircleImage: View {
    
    init(name: String, frameWidth: CGFloat, frameHeight: CGFloat, shadowRadius: CGFloat) {
        self.name = name
        self.frameWidth = frameWidth
        self.frameHeight = frameHeight
        self.shadowRadius = shadowRadius
    }
    
    fileprivate let name: String
    fileprivate let frameWidth: CGFloat
    fileprivate let frameHeight: CGFloat
    fileprivate let shadowRadius: CGFloat
    
    var body: some View {
        Image(name)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: frameWidth, height: frameHeight)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .shadow(radius: shadowRadius)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleImage(name: "steve", frameWidth: 100, frameHeight: 100, shadowRadius: 10)
            CircleImage(name: "steve", frameWidth: 200, frameHeight: 200, shadowRadius: 20)
        }
        .previewLayout(.fixed(width: 300, height: 300))
    }
}

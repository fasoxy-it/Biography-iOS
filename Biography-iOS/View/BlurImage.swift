//
//  BlurImage.swift
//  Biography-iOS
//
//  Created by Mattia Fasoli on 15/04/21.
//

import SwiftUI

struct BlurImage: View {
    
    init(name: String, blurRadius: CGFloat) {
        self.name = name
        self.blurRadius = blurRadius
    }
    
    fileprivate let name: String
    fileprivate let blurRadius: CGFloat
    
    var body: some View {
        Image(name)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .blur(radius: blurRadius, opaque: true)
    }
}

struct BlurImage_Previews: PreviewProvider {
    static var previews: some View {
        BlurImage(name: "steve", blurRadius: 10)
    }
}

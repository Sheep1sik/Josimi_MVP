//
//  ButtonView.swift
//  Josimi
//
//  Created by 양원식 on 7/1/24.
//

import SwiftUI

struct ButtonView: View {
    var imageName: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    ButtonView(imageName: "house")
}

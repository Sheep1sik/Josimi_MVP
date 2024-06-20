//
//  LoginButtonView.swift
//  Josimi
//
//  Created by 양원식 on 6/20/24.
//

import SwiftUI

struct LoginButtonView: View {
    var body: some View {
        Button(action: {
            print("로그인")
        }, label: {
            HStack {
                Image(systemName: "person.fill")
                Text("로그인")
                    .font(.system(size: 15))
            }
            .foregroundColor(.black)
            .padding(7)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.black, lineWidth: 1)
            )
        })
    }
}

#Preview {
    LoginButtonView()
}

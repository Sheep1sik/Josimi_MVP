//
//  SearchBarView.swift
//  Josimi
//
//  Created by 양원식 on 6/20/24.
//

import SwiftUI

struct SearchBarView: View {
    
    var body: some View {
        HStack {
            Capsule()
                .stroke(Color.black, lineWidth: 1)
                .frame(height: 40)
                .overlay {
                    HStack {
                        Spacer()
                        // 검색 아이콘
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.black)
                    }
                    .padding()
                }
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
        .padding(.top, 5)

        
    }
}

#Preview {
    SearchBarView()
}

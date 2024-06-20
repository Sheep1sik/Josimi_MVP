//
//  SearchBarView.swift
//  Josimi
//
//  Created by 양원식 on 6/20/24.
//

import SwiftUI

struct SearchBarView: View {
    // 유저 검색
    @State var searchText: String = ""
    // 유저 관심 질병
    @State var userInterest: String = "당뇨"
    // 관련 인기검색어 목록
    @State var keywords: [String] = ["삼육두유당뇨케어푸드"]
    
    var randomKeyword: String {
        keywords.randomElement() ?? ""
    }
    
    var body: some View {
        HStack {
            // 관심질병 인기
            Text("\(userInterest) 인기")
                .font(.system(size: 12))
                .foregroundColor(.red)
                .fontWeight(.bold)
            
            // 랜덤한 관련 인기검색어
            TextField("\(randomKeyword)", text: $searchText)
                .font(.system(size: 15))
                .frame(alignment: .leading)
            
            // 검색 아이콘
            Image(systemName: "magnifyingglass")
                .foregroundColor(.black)
        }
        .frame(maxWidth: .infinity)
        .padding(7)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.black, lineWidth: 1)
        )

        
    }
}

#Preview {
    SearchBarView()
}

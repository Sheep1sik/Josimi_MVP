//
//  LoggedInHomeView.swift
//  Josimi
//
//  Created by 양원식 on 6/20/24.
//

import SwiftUI

struct MainHomeView: View {
    
    var body: some View {
        NavigationStack {
            // 상단 바
            HStack {
                // 로고
                Rectangle()
                    .frame(width: 71, height: 36)
                    .foregroundColor(Color(.lightGray))
                    .overlay {
                        Text("로고 자리")
                    }
                Spacer()
                
                // 로그인 창
                LoginButtonView()
            }
            .padding(.vertical, 3)
            .padding(.horizontal, 15)
            HStack {
                // 검색 창
                SearchBarView()
                    .padding(.horizontal, 6)
            } //: HSTACK
            .padding(.horizontal, 10)
            .padding(.vertical, 3)
            
            Spacer()
            
            // 광고 배너
        } //: NAVIGATIONSTACK
    }
}

#Preview {
    MainHomeView()
}

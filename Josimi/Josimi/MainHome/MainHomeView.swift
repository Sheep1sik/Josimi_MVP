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
                // 관심질병 명
                RoundedRectangle(cornerRadius: 13)
                    .stroke(Color.green, lineWidth: 2)
                    .frame(width: 65, height: 32)
                    .overlay {
                        Text("당뇨")
                            .foregroundColor(.green)
                            .fontWeight(.semibold)
                    }
                
                Spacer()
                
                // 조시미 로고
                Image("josimi_title")
                    .padding(.trailing, 25)
                
                Spacer()
                
                // 내 소식 버튼
                Button(action: {
                    
                }, label: {
                    Image("Notification")
                })
                
            }
            .padding(.horizontal)
            
            // 검색 창
            SearchBarView()
            
            ScrollView {
                
                // 광고 배너
                ADBannerView()
            }
        } //: NAVIGATIONSTACK
    }
}

#Preview {
    MainHomeView()
}

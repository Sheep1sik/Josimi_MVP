//
//  CustomTabView.swift
//  Josimi
//
//  Created by 양원식 on 7/1/24.
//

import SwiftUI

struct CustomTabbarView: View {
    @Binding var selectedTab: Tab
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Image("menu")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 450, height: 75)
                    .offset(y: -5)
                HStack {
                    Spacer()
                    Spacer()
                    // 홈 버튼
                    Button {
                        selectedTab = .home
                    } label: {
                        selectedTab == .home ? ButtonView(imageName: "house.fill") : ButtonView(imageName: "house")
                    }
                    Spacer()
                    
                    // 찜 목록
                    Button {
                        selectedTab = .wishList
                    } label: {
                        selectedTab == .wishList ? ButtonView(imageName: "heart.fill") : ButtonView(imageName: "heart")
                    }
                    Spacer()
                    
                    // 카메라
                    Button {
                        selectedTab = .camera
                    } label: {
                        Image("scan")
                            .resizable()
                            .frame(width: 85, height: 85)
                            .offset(y: -20)
                    }
                    Spacer()
                    
                    // 장바구니
                    Button {
                        selectedTab = .cart
                    } label: {
                        selectedTab == .cart ? ButtonView(imageName: "cart.fill") : ButtonView(imageName: "cart")
                    }
                    Spacer()
                    
                    // 마이페이지
                    Button {
                        selectedTab = .account
                    } label: {
                        selectedTab == .account ? ButtonView(imageName: "person.fill") : ButtonView(imageName: "person")
                    }
                    Spacer()
                    Spacer()
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom) // 안전 영역 무시하여 가장 하단으로
    }
}


#Preview {
    CustomTabbarView(selectedTab: .constant(Tab.home))
}

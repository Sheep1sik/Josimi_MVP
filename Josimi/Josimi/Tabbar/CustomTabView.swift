//
//  CustomTabView.swift
//  Josimi
//
//  Created by 양원식 on 7/1/24.
//

import SwiftUI

struct CustomTabView: View {
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
                    Button {
                        selectedTab = .home
                    } label: {
                        selectedTab == .home ? ButtonView(imageName: "house.fill") : ButtonView(imageName: "house")
                    }
                    Spacer()
                    Button {
                        selectedTab = .wishList
                    } label: {
                        selectedTab == .wishList ? ButtonView(imageName: "heart.fill") : ButtonView(imageName: "heart")
                    }
                    Spacer()
                    Button {
                        selectedTab = .camera
                    } label: {
                        Image("scan")
                            .resizable()
                            .frame(width: 85, height: 85)
                            .offset(y: -20)
                    }
                    Spacer()
                    Button {
                        selectedTab = .cart
                    } label: {
                        selectedTab == .cart ? ButtonView(imageName: "cart.fill") : ButtonView(imageName: "cart")
                    }
                    Spacer()
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
    CustomTabView(selectedTab: .constant(Tab.home))
}

//
//  TabbarView.swift
//  Josimi
//
//  Created by 양원식 on 7/1/24.
//

import SwiftUI

enum Tab {
    case home
    case wishList
    case camera
    case cart
    case account
}

struct TabbarView: View {
    @State var selectedTab: Tab = .home
    var body: some View {
        VStack {
            switch selectedTab {
            case .home:
                MainHomeView()
            case .wishList:
                WishListView()
            case .camera:
                CameraView()
            case .cart:
                CartView()
            case .account:
                AccountView()
            }
            CustomTabView(selectedTab: $selectedTab)
        }
    }
}

#Preview {
    TabbarView()
}

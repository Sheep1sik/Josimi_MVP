//
//  ItemGridView.swift
//  Josimi
//
//  Created by 양원식 on 7/20/24.
//

import SwiftUI

struct ItemGridView: View {
    
    let foods: [Food]
    @Binding var path: NavigationPath
    
    let columns = [
        GridItem(.fixed(150)), // 고정된 너비의 첫 번째 열
        GridItem(.fixed(150))  // 고정된 너비의 두 번째 열
    ]
    
    var body: some View {
        ScrollView {
            HStack {
                Text("총 \(foods.count)개")
                    .font(.headline)
                    .padding(.top)
                Spacer()
            }
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(foods, id: \.id) { food in
                    NavigationLink(destination: ItemView(path: $path, food: food)) {
                        ItemInfoView(viewModel: ItemViewModel(food: food) , food: food)
                    }
                    .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    ItemGridView(foods: Food.MOCK_FOODS, path: .constant(NavigationPath()))
}

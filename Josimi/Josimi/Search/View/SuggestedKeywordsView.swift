//
//  SuggestedKeywordsView.swift
//  Josimi
//
//  Created by 양원식 on 7/21/24.
//

import SwiftUI

struct SuggestedKeywordsView: View {
    let keywords: [String]
    let viewModel: SearchViewModel
    @Binding var path: NavigationPath

    var body: some View {
        VStack(alignment: .leading) {
            ForEach(keywords, id: \.self) { keyword in
                if let food = viewModel.food(for: keyword) {
                    NavigationLink(destination: ItemView(path: $path, food: food)) {
                        Text(keyword)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.vertical, 3)
                    }
                    .foregroundColor(.black)
                }
            }
            Spacer()
        }
    }
}


#Preview {
    SuggestedKeywordsView(keywords: Food.MOCK_FOODS.map { $0.foodName}, viewModel: SearchViewModel(), path: .constant(NavigationPath()))
}

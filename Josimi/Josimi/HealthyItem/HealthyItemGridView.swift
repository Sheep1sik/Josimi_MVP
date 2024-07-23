//
//  HealthyItemView.swift
//  Josimi
//
//  Created by 양원식 on 7/20/24.
//

import SwiftUI

struct HealthyItemGridView: View {
    let food: Food
    @Binding var path: NavigationPath
    @Environment(\.presentationMode) var presentationMode
    
    // 고정된 너비의 열 정의
    let columns = [
        GridItem(.fixed(150)),
        GridItem(.fixed(150))
    ]
    
    // 선택한 Food의 카테고리에 따라 HealthyFood를 필터링
    var filteredHealthyFoods: [HealthyFood] {
        HealthyFood.MOCK_HEALTHYFOODS.filter { $0.category == food.category }
    }
    
    var body: some View {
        VStack {
            
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                    }
                }
                Spacer()
            }
            ScrollView {
                Text("조금 더 안전한 제품을 찾아왔어요 !")
                    .fontWeight(.semibold)
                
                HStack {
                    Text("총 \(filteredHealthyFoods.count)개")
                        .font(.headline)
                        .padding(.top)
                    Spacer()
                }
                LazyVGrid(columns: columns, spacing: 60) {
                    ForEach(filteredHealthyFoods, id: \.id) { healthyFood in
                        NavigationLink(destination: HealthyItemView(healthyFood: healthyFood, path: $path)) {
                            HealthyItemInfoView(viewModel: HealthyItemViewModel(healthyFood: healthyFood), healthyFoods: healthyFood)
                        }
                        .foregroundColor(.black)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .padding()
    }
}

#Preview {
    HealthyItemGridView(food: Food.MOCK_FOODS[0], path: .constant(NavigationPath()) )
}

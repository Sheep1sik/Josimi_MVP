//
//  UserRecommendedView.swift
//  Josimi
//
//  Created by 양원식 on 7/23/24.
//

import SwiftUI

struct UserRecommendedView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        HStack {
            Text("나를 위한 건강한 제품")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
        }
        
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(HealthyFood.MOCK_HEALTHYFOODS.shuffled(), id: \.id) { healthyFood in
                NavigationLink(destination: HealthyItemView(healthyFood: healthyFood, path: .constant(NavigationPath()))) {
                    HealthyItemInfoView(viewModel: HealthyItemViewModel(healthyFood: healthyFood), healthyFoods: healthyFood)
                }
                .foregroundColor(.black)
            }
        }
        .padding()
    }
}

#Preview {
    UserRecommendedView()
}

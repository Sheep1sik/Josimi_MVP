//
//  HealthyItemInfoView.swift
//  Josimi
//
//  Created by 양원식 on 7/22/24.
//

import SwiftUI
import Kingfisher

struct HealthyItemInfoView: View {
    
    @ObservedObject var viewModel: HealthyItemViewModel
    
    let healthyFoods : HealthyFood
    
    var body: some View {
        VStack {
            // 이미지
            if healthyFoods.imageUrl == "" {
                Image(systemName: "network.slash")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding(.vertical, 5)
            } else {
                KFImage(URL(string: healthyFoods.imageUrl))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding(.vertical, 5)
            }
            
            
            Text("\(healthyFoods.foodName)")
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("\(healthyFoods.price) 원")
                .fontWeight(.bold)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, 3)
            
            let riskCounts = viewModel.countRiskLevels()
            
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(.systemGray5))
                    .frame(width: 60, height: 25)
                    .overlay{
                        Text("위험 \(riskCounts.highRisk + riskCounts.moderateRisk + riskCounts.lowRisk)개")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                Spacer()
            }
        }
    }
}

#Preview {
    HealthyItemInfoView(viewModel: HealthyItemViewModel(healthyFood: HealthyFood.MOCK_HEALTHYFOODS[0]), healthyFoods: HealthyFood.MOCK_HEALTHYFOODS[0])
}

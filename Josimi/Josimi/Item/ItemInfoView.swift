//
//  ItemInfoView.swift
//  Josimi
//
//  Created by 양원식 on 7/20/24.
//

import SwiftUI
import Kingfisher

struct ItemInfoView: View {
    @ObservedObject var viewModel : ItemViewModel
    
    let food: Food
    
    var body: some View {
        VStack {
            // 이미지
            KFImage(URL(string: food.imageUrl))
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding(.vertical, 5)
            
            Text("\(food.foodName)")
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("\(food.price) 원")
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
    ItemInfoView(viewModel: ItemViewModel(food: Food.MOCK_FOODS[0]) , food: Food.MOCK_FOODS[0])
}

//
//  HealthyItemDetailView.swift
//  Josimi
//
//  Created by 양원식 on 7/23/24.
//

import SwiftUI

struct HealthyItemDetailView: View {
    @ObservedObject var viewModel: HealthyItemViewModel
    
    let healthyFood : HealthyFood
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 120, height: 30)
                    .foregroundColor(Color.red.opacity(0.1))
                    .overlay {
                        HStack {
                            Circle()
                                .frame(width: 13, height: 13)
                                .foregroundColor(.red)
                            Text("높은 위험")
                                .fontWeight(.semibold)
                            Text("\(viewModel.countRiskLevels().highRisk)")
                                .foregroundColor(.red)
                                .fontWeight(.semibold)
                        }
                    }
                Spacer()
                VStack(alignment: .leading) {
                    ForEach(viewModel.highRiskIngredients(), id: \.name) { ingredient in
                        Text("\(ingredient.name)")
                            .fontWeight(.bold)
                            .padding(.vertical, 2)
                        
                        Text("\(ingredient.description)")
                        
                    }
                }
                
                
            }
            Spacer()
            Divider()
            Spacer()
            
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 120, height: 30)
                        .foregroundColor(Color.yellow.opacity(0.1))
                        .overlay {
                            HStack {
                                Circle()
                                    .frame(width: 13, height: 13)
                                    .foregroundColor(.yellow)
                                Text("주의 위험")
                                    .fontWeight(.semibold)
                                Text("\(viewModel.countRiskLevels().moderateRisk)")
                                    .foregroundColor(.yellow)
                                    .fontWeight(.semibold)
                            }
                        }
                    Spacer()
                    VStack(alignment: .leading) {
                        ForEach(viewModel.moderateRiskIngredients(), id: \.name) { ingredient in
                            Text("\(ingredient.name)")
                                .fontWeight(.bold)
                                .padding(.vertical, 2)
                            
                            Text("\(ingredient.description)")
                        }
                    }
                }
                Spacer()
                Divider()
                Spacer()
                
                HStack(alignment: .top) {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 120, height: 30)
                        .foregroundColor(Color.green.opacity(0.1))
                        .overlay {
                            HStack {
                                Circle()
                                    .frame(width: 13, height: 13)
                                    .foregroundColor(.green)
                                Text("낮은 위험")
                                    .fontWeight(.semibold)
                                Text("\(viewModel.countRiskLevels().lowRisk)")
                                    .foregroundColor(.green)
                                    .fontWeight(.semibold)
                            }
                        }
                    Spacer()
                    VStack(alignment: .leading) {
                        ForEach(viewModel.lowRiskIngredients(), id: \.name) { ingredient in
                            Text("\(ingredient.name)")
                                .fontWeight(.bold)
                                .padding(.vertical, 2)
                            
                            Text("\(ingredient.description)")
                        }
                    }
                }
                Spacer()
                Divider()
                Spacer()
                
                HStack(alignment: .top) {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 120, height: 30)
                        .foregroundColor(Color.green.opacity(0.1))
                        .overlay {
                            HStack {
                                Circle()
                                    .frame(width: 13, height: 13)
                                    .foregroundColor(.green)
                                Text("안전")
                                    .fontWeight(.semibold)
                                Text("\(viewModel.countRiskLevels().safe)")
                                    .foregroundColor(.green)
                                    .fontWeight(.semibold)
                            }
                        }
                    Spacer()
                    VStack(alignment: .leading) {
                        ForEach(viewModel.safeRiskIngredients(), id: \.name) { ingredient in
                            Text("\(ingredient.name)")
                                .fontWeight(.bold)
                                .padding(.vertical, 2)
                            
                            Text("\(ingredient.description)")
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    HealthyItemDetailView(viewModel: HealthyItemViewModel(healthyFood: HealthyFood.MOCK_HEALTHYFOODS[0]), healthyFood: HealthyFood.MOCK_HEALTHYFOODS[0])
}

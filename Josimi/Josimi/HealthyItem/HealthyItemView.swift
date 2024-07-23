//
//  HealthyItemView.swift
//  Josimi
//
//  Created by 양원식 on 7/22/24.
//

import SwiftUI
import Kingfisher

struct HealthyItemView: View {
    
    let healthyFood : HealthyFood
    
    @Binding var path: NavigationPath
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            // 상단바
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Image(systemName: "chevron.left") // 커스텀 이미지
                            .foregroundColor(.black)
                    }
                }
                .padding(.horizontal)
                
                Button(action: {
                    path.removeLast(path.count)
                }, label: {
                    Image(systemName: "house")
                        .foregroundColor(.black)
                })
                
                Spacer()
                
            }
            
            // 이미지
            KFImage(URL(string: healthyFood.imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 150)
                .padding()
            
            // 카테고리 바
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("\(healthyFood.category) \(Image(systemName: "chevron.right")) ")
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                })
                
                Spacer()
            }
            .padding(.horizontal)
            
            // 상품 설명
            HStack {
                Text("\(healthyFood.foodName)")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Divider()
            ScrollView {
                Image("Summary")
                    .padding(.vertical)
                
                HealthyItemDetailView(viewModel: HealthyItemViewModel(healthyFood: healthyFood), healthyFood: healthyFood)
            }
            
            Spacer()
            
            Link(destination: URL(string: healthyFood.link)!, label: {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.green)
                    .overlay {
                        Text("구매하기")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .frame(height: 50)
            })
        }
        .padding(.horizontal)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    HealthyItemView(healthyFood: HealthyFood.MOCK_HEALTHYFOODS[0], path: .constant(NavigationPath()))
}

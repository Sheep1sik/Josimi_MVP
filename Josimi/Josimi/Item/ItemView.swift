//
//  ItemView.swift
//  Josimi
//
//  Created by 양원식 on 7/20/24.
//

import SwiftUI
import Kingfisher

struct ItemView: View {
    @Binding var path: NavigationPath
    @Environment(\.presentationMode) var presentationMode
    
    let food: Food
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
            KFImage(URL(string: food.imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 150)
                .padding()
            
            // 카테고리 바
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("\(food.category) \(Image(systemName: "chevron.right")) ")
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                })
                
                Spacer()
            }
            .padding(.horizontal)
            
            // 상품 설명
            HStack {
                Text("\(food.foodName)")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Divider()
            
            ScrollView {
                Image("Summary")
                    .padding(.vertical)
                ItemDetailView(viewModel: ItemViewModel(food: food), food: food)
            }
            
            
            
            Spacer()
            
            
            
            NavigationLink(destination: HealthyItemGridView(food: food, path: $path)) {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.green)
                    .overlay {
                        Text("건강한 제품으로 바꾸기")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .frame(height: 50)
            }
        }
        .padding(.horizontal)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ItemView(path: .constant(NavigationPath()), food: Food.MOCK_FOODS[0])
}

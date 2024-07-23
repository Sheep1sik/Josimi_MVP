//
//  SearchView.swift
//  Josimi
//
//  Created by 양원식 on 7/10/24.
//

import SwiftUI

struct SearchView: View {
    @StateObject private var viewModel = SearchViewModel()
    @Binding var path: NavigationPath
    @Environment(\.presentationMode) var presentationMode
    
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
                .padding(.horizontal, 3)
                Capsule()
                    .stroke(Color.black, lineWidth: 1)
                    .frame(height: 40)
                    .overlay {
                        HStack {
                            TextField("Search", text: $viewModel.searchText)
                                .submitLabel(.search)
                                .onSubmit {
                                    viewModel.search(for: viewModel.searchText)
                                }
                            
                            if !viewModel.searchText.isEmpty {
                                Button(action: {
                                    viewModel.searchText = ""
                                    viewModel.searchResults = [] // 텍스트를 지우면 검색 결과도 초기화
                                }) {
                                    Image(systemName: "xmark")
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        .padding()
                    }
            }
            .padding(.vertical)
            
            Divider()
            
            // 검색 결과 표시
            if !viewModel.searchResults.isEmpty {
                ItemGridView(foods: viewModel.searchResults, path: $path)
            }
            else {
                // 연관 검색어
                if !viewModel.searchText.isEmpty {
                    SuggestedKeywordsView(keywords: viewModel.suggestedKeywords, viewModel: viewModel, path: $path)
                }
            }
            
            Spacer()
        }
        .padding()
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SearchView(path: .constant(NavigationPath()))
}

//
//  SearchViewModel.swift
//  Josimi
//
//  Created by 양원식 on 7/20/24.
//

import SwiftUI
import Combine

class SearchViewModel: ObservableObject {
    @Published var searchText: String = ""
    @Published var searchHistory: [String] = []
    @Published var suggestedKeywords: [String] = []
    @Published var searchResults: [Food] = [] // 검색 결과를 위한 프로퍼티 추가

    private var cancellables = Set<AnyCancellable>()
    
    init() {
        $searchText
            .sink { [weak self] newValue in
                self?.updateSuggestedKeywords(for: newValue)
            }
            .store(in: &cancellables)
        self.suggestedKeywords = Food.MOCK_FOODS.map { $0.foodName }
    }
    
    private func updateSuggestedKeywords(for query: String) {
        if query.isEmpty {
            suggestedKeywords = []
        } else {
            suggestedKeywords = Food.MOCK_FOODS.map { $0.foodName }.filter {
                $0.contains(query)
            }
        }
    }
    
    func addSearchHistory(_ keyword: String) {
        if !searchHistory.contains(keyword) {
            searchHistory.append(keyword)
        }
    }
    
    func food(for name: String) -> Food? {
        return Food.MOCK_FOODS.first { $0.foodName == name }
    }

    func search(for query: String) {
        searchResults = Food.MOCK_FOODS.filter { $0.foodName.contains(query) }
    }
}

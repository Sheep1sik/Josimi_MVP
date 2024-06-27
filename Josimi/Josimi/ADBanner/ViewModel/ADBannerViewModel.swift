//
//  ADBannerViewModel.swift
//  Josimi
//
//  Created by 양원식 on 6/24/24.
//

import SwiftUI
import Combine

class ADBannerViewModel: ObservableObject {
    @Published var adIndex = 0
    
    private let model = ADBannerModel()
    private var timer: Timer?
    
    var adImages: [String] {
        return model.adImages
    }

    func correctedIndex(for index: Int) -> Int {
        let count = model.adImages.count
        return (count + index) % count
    }

    func startAutoScroll() {
        stopAutoScroll()
        timer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            self.adIndex = self.correctedIndex(for: self.adIndex + 1)
        }
    }
    
    func stopAutoScroll() {
        timer?.invalidate()
        timer = nil
    }
}

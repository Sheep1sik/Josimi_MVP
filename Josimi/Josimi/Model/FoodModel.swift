//
//  FoodModel.swift
//  Josimi
//
//  Created by 양원식 on 7/20/24.
//

import Foundation
import SwiftUI

// Define the Food struct
struct Food: Identifiable {
    let id: String
    var foodName: String
    var category: String
    var imageUrl: String
    var summary: String?
    var ingredients: [String]
    var price: Int
    var link: String
}

// Extension to hold mock data
extension Food {
    static var MOCK_FOODS: [Food] = [
        .init(id: NSUUID().uuidString,
              foodName: "코카콜라 캔",
              category: "생수/음료",
              imageUrl: "https://godomall.speedycdn.net/1cd80571a779bf8f2c08a18dc0965949/goods/1000000027/image/detail/1000000027_detail_012.jpg",
              summary: nil,
              ingredients: ["정제수", "당 시럽", "설탕", "기타과당", "이산화탄소", "카라멜색소IV", "인산", "천연향료", "카페인"],
              price: 19800,
              link: "코카콜라 오리지널, 350ml, 24개 (coupang.com)"),
        .init(id: NSUUID().uuidString,
              foodName: "베지밀 검은콩 고칼슘 두유",
              category: "우유/요거트",
              imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSFt1Lz7bNPx--ej1WOB3gHRT-JrR6SiSKiQ&s",
              summary: nil,
              ingredients: ["원액두유", "검은콩추출액", "정백당", "이소말토올리고당", "정제수", "탄산칼슘", "대두다당류", "누룽지분말", "옥배유", "검은참깨페이스트", "구연산나트륨", "정제염", "검은쌀농축액", "글리세린지방산에스테르", "영양강화제", "드라이비타민D3", "메이플후레바", "누룽지향"],
              price: 28110,
              link: "정식품)베지밀 검은콩 고칼슘 두유 파우치 190ml, 190ml, 45개 (coupang.com)"),
        .init(id: NSUUID().uuidString,
              foodName: "이클립스 페퍼민트향 캔디",
              category: "사탕",
              imageUrl: "https://img.danawa.com/prod_img/500000/242/516/img/12516242_1.jpg?_v=20201022134655",
              summary: nil,
              ingredients: ["소비톨", "합성향료(페퍼민트향)", "스테아린산마그네슘", "아스파탐", "아세설팜칼륨", "수크랄로스", "식용색소청색 제1호 알루미늄레이크"],
              price: 4040,
              link: "이클립스 페퍼민트향 캔디, 34g, 2개 (coupang.com)"),
        .init(id: NSUUID().uuidString,
              foodName: "햇반",
              category: "즉석조리식품",
              imageUrl: "https://thumbnail9.coupangcdn.com/thumbnails/remote/230x230ex/image/vendor_inventory/0385/6fc37c6c5e58583a9c56f8f88476b47b192332ae6320059dfbef2171d4b4.jpg",
              summary: nil,
              ingredients: ["멥쌀", "쌀미강추출물"],
              price: 37000,
              link: "https://www.coupang.com/vp/products/7488621084?itemId=3998061690&vendorItemId=78547254740&q=%ED%96%87%EB%B0%98&itemsCount=36&searchId=c55053eecd094a9cae464f5c62c3fe8f&rank=1&isAddedCart="),
        .init(id: NSUUID().uuidString,
              foodName: "푸르밀 밀크플러스",
              category: "가공유",
              imageUrl: "https://cdn.imweb.me/thumbnail/20231101/736fb25ee11f9.jpg",
              summary: nil,
              ingredients: ["환원유", "탈지분유", "원유", "칼슘혼합제제", "탄산칼륨", "아라비아검", "대두다당류", "피로인산제이철", "카복시메틸셀룰로스나트륨", "엽산", "비타민B9"],
              price: 1280,
              link: "https://www.dnmart.co.kr/web2/web_pop_show_goods_detail_entire.html?shop_seq=58&goods_seq=222113")
    ]
}

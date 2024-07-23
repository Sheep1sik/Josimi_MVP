//
//  IngredientModel.swift
//  Josimi
//
//  Created by 양원식 on 7/22/24.
//

import Foundation

enum RiskLevel: String {
    case highRisk = "높은 위험"
    case moderateRisk = "주의 위험"
    case lowRisk = "낮은 위험"
    case safe = "안전"
}

struct Ingredient {
    let name: String
    let description: String
    let riskLevel: RiskLevel
}

let ingredientsList: [Ingredient] = [
    // 높은 위험
    Ingredient(name: "수크랄로스", description: "수크랄로스는 설탕에서 유도된 인공 감미료로, 설탕보다 약 600배 더 달지만 칼로리는 없습니다.", riskLevel: .highRisk),
    Ingredient(name: "아세설팜칼륨", description: "아세설팜칼륨은 무칼로리 인공 감미료로, 설탕보다 약 200배 더 답니다.", riskLevel: .highRisk),
    Ingredient(name: "이소말트시럽", description: "이소말트는 설탕에서 유도된 저칼로리 감미료로, 설탕과 비슷한 단맛을 제공합니다.", riskLevel: .highRisk),
    Ingredient(name: "자일리톨", description: "자작나무 등에서 추출한 당알코올로, 설탕과 비슷한 단맛을 내며 치아 건강에 좋습니다.", riskLevel: .highRisk),
    Ingredient(name: "스테비아", description: "스테비아 식물에서 추출한 천연 감미료로, 설탕보다 훨씬 강한 단맛을 내지만 칼로리는 없습니다.", riskLevel: .highRisk),
    Ingredient(name: "당 시럽", description: "당 시럽은 옥수수 전분 등을 가공하여 만든 시럽으로, 주로 고과당 옥수수 시럽이 사용됩니다.", riskLevel: .highRisk),
    Ingredient(name: "설탕", description: "설탕은 사탕수수나 사탕무에서 추출한 당류입니다.", riskLevel: .highRisk),
    Ingredient(name: "정백당", description: "사탕수수나 사탕무에서 추출한 순수 설탕입니다.", riskLevel: .highRisk),
    Ingredient(name: "아스파탐", description: "아스파탐은 아미노산인 페닐알라닌과 아스파르트산으로 구성된 인공 감미료입니다.", riskLevel: .highRisk),
    Ingredient(name: "식용색소청색 제1호 알루미늄레이크", description: "식용색소청색 제1호 알루미늄레이크는 청색 색소를 알루미늄 하이드록사이드에 결합시킨 형태로, 안정성과 색상 유지를 위해 사용됩니다.", riskLevel: .highRisk),

    // 주의 위험
    Ingredient(name: "에리스리톨", description: "에리스리톨은 자연에서 발견되는 당알코올로, 설탕과 비슷한 단맛을 내지만 칼로리는 거의 없습니다.", riskLevel: .moderateRisk),
    Ingredient(name: "프락토올리고당", description: "자연에서 발견되는 저칼로리 감미료로, 프락토스 단위가 연결된 올리고당입니다.", riskLevel: .moderateRisk),
    Ingredient(name: "알룰로스", description: "알룰로스는 자연에서 발견되는 희귀 당으로, 설탕과 비슷한 맛을 내지만 칼로리는 거의 없습니다.", riskLevel: .moderateRisk),
    Ingredient(name: "액상알룰로스", description: "알룰로스는 자연에서 발견되는 희귀 당으로, 설탕과 비슷한 맛을 내지만 칼로리는 거의 없습니다.", riskLevel: .moderateRisk),
    Ingredient(name: "알룰로오스", description: "자연에서 발견되는 희귀 당으로, 설탕과 비슷한 단맛을 내지만 칼로리는 거의 없습니다.", riskLevel: .moderateRisk),
    Ingredient(name: "기타과당", description: "기타 과당은 과일, 야채 또는 옥수수에서 추출된 단당류입니다.", riskLevel: .moderateRisk),
    Ingredient(name: "카페인", description: "카페인은 자연적으로 존재하는 자극제로, 커피, 차, 초콜릿 등에서 발견됩니다.", riskLevel: .moderateRisk),
    Ingredient(name: "이소말토올리고당", description: "이소말토올리고당은 올리고당의 일종으로, 포도당 분자들이 결합한 형태입니다.", riskLevel: .moderateRisk),

    // 낮은 위험
    Ingredient(name: "천연향료(레몬라임향)", description: "천연향료는 자연에서 추출한 향료로, 레몬과 라임의 향을 냅니다.", riskLevel: .lowRisk),
    Ingredient(name: "천연향료(레몬향)", description: "천연 레몬향료는 레몬에서 추출한 자연 향료입니다.", riskLevel: .lowRisk),
    Ingredient(name: "천연향료1(복숭아향)", description: "복숭아에서 추출한 자연 향료로, 복숭아의 향을 냅니다.", riskLevel: .lowRisk),
    Ingredient(name: "천연향료2(복숭아향)", description: "복숭아에서 추출한 또 다른 자연 향료로, 첫 번째 향료와 조합하여 복숭아의 향을 강화합니다.", riskLevel: .lowRisk),
    Ingredient(name: "파인애플청징농충액", description: "파인애플 주스를 농축한 액체로, 천연 단맛과 향을 제공합니다.", riskLevel: .lowRisk),
    Ingredient(name: "혼합제제(글리세린,정제수,아라비아검,D-소비톨,가공유지,자당에스테르,주정)", description: "글리세린: 보습제와 안정제로 사용됨. 아라비아검: 식품의 안정제와 유화제로 사용됨. D-소비톨: 감미료 및 안정제로 사용됨. 가공유지: 식품의 질감을 개선. 자당에스테르: 유화제. 주정: 방부제와 용매로 사용됨.", riskLevel: .lowRisk),
    Ingredient(name: "혼합제제(유화제,합성향료,라임오일)", description: "유화제: 물과 기름을 혼합하여 균일한 혼합물을 만듦. 합성향료: 인공적으로 제조한 향료. 라임오일: 라임에서 추출한 오일.", riskLevel: .lowRisk),
    Ingredient(name: "혼합제제(유화제,합성향료,정제수,오렌지오일)", description: "유화제: 물과 기름을 혼합하여 균일한 혼합물을 만듦. 합성향료: 인공적으로 제조한 향료. 오렌지오일: 오렌지에서 추출한 오일.", riskLevel: .lowRisk),
    Ingredient(name: "효소초리루틴", description: "루틴은 플라보노이드의 일종으로, 항산화 작용을 합니다. 효소 처리를 통해 안정성과 생체 이용률을 높인 형태입니다.", riskLevel: .lowRisk),
    Ingredient(name: "향료제제(주정,프로필렌글리콜,트리아세틴,정제수,바닐린,젖산,오렌지오일)", description: "주정: 알코올로, 향료 용매로 사용됩니다. 프로필렌글리콜: 용매 및 보습제. 트리아세틴: 안정제 및 용매. 바닐린: 바닐라 향을 내는 성분. 젖산: 산미료. 오렌지오일: 오렌지 향을 내는 천연 오일.", riskLevel: .lowRisk),
    Ingredient(name: "합성향료(요구르트향)", description: "인공적으로 제조한 요구르트 향료입니다.", riskLevel: .lowRisk),
    Ingredient(name: "혼합제제(정제수,전지분유,유크림,합성향료,효소,진탄검)", description: "전지분유: 영양소와 풍미를 더하는 유제품. 유크림: 크림으로 풍미와 질감을 개선. 합성향료: 인공 향료. 효소: 특정 반응을 촉진. 진탄검: 식품 안정제 및 증점제.", riskLevel: .lowRisk),
    Ingredient(name: "혼합분유(탈지분유,유청분말)", description: "탈지분유와 유청분말을 혼합한 성분으로, 단백질과 기타 영양소가 풍부합니다.", riskLevel: .lowRisk),
    Ingredient(name: "대두다당류", description: "대두에서 추출한 다당류로, 섬유질이 풍부합니다.", riskLevel: .lowRisk),
    Ingredient(name: "분리대두단백", description: "대두에서 추출한 고농축 단백질로, 지방과 탄수화물이 제거된 형태입니다.", riskLevel: .lowRisk),
    Ingredient(name: "식염", description: "일반적인 소금으로, 나트륨과 염소로 구성됩니다.", riskLevel: .lowRisk),
    Ingredient(name: "오트", description: "귀리에서 추출된 성분으로, 식이섬유와 단백질이 풍부합니다.", riskLevel: .lowRisk),
    Ingredient(name: "고올레산해바라기유", description: "올레산 함량이 높은 해바라기씨에서 추출된 식용유로, 산화 안정성이 높습니다.", riskLevel: .lowRisk),
    Ingredient(name: "산도조절제", description: "식품의 산도를 조절하여 맛을 개선하고, 보존성을 높이는 데 사용되는 물질입니다.", riskLevel: .lowRisk),
    Ingredient(name: "유화제", description: "물과 기름 같은 상반되는 두 성분을 혼합하여 균일한 혼합물을 만드는 물질입니다.", riskLevel: .lowRisk),
    Ingredient(name: "볶음현미분말", description: "볶은 현미를 갈아서 만든 분말입니다.", riskLevel: .lowRisk),
    Ingredient(name: "천일염", description: "바닷물을 증발시켜 만든 소금으로, 미네랄이 풍부합니다.", riskLevel: .lowRisk),
    Ingredient(name: "약콩분말", description: "약콩을 갈아서 만든 분말입니다. 약콩은 검은콩의 일종으로, 항산화 물질이 풍부합니다.", riskLevel: .lowRisk),
    Ingredient(name: "해조분말", description: "해조류를 건조하여 분말 형태로 만든 것입니다.", riskLevel: .lowRisk),
    Ingredient(name: "유근피추출액", description: "뽕나무의 뿌리 껍질에서 추출한 액체로, 전통적으로 한방에서 사용됩니다.", riskLevel: .lowRisk),
    Ingredient(name: "비트루트주스", description: "비트 뿌리에서 추출한 주스로, 비타민과 미네랄이 풍부합니다.", riskLevel: .lowRisk),
    Ingredient(name: "안나토색소", description: "안나토 씨앗에서 추출한 천연 색소로, 노란색에서 주황색 색상을 냅니다.", riskLevel: .lowRisk),
    Ingredient(name: "포도과피색소", description: "포도의 껍질에서 추출한 색소로, 주로 보라색 또는 빨간색을 냅니다.", riskLevel: .lowRisk),
    Ingredient(name: "강황", description: "강황 뿌리에서 추출한 향신료로, 노란색을 띄며 항염 효과가 있습니다.", riskLevel: .lowRisk),
    Ingredient(name: "버터", description: "소의 우유로 만든 지방으로, 크림을 휘저어 만든 유제품입니다.", riskLevel: .lowRisk),
    Ingredient(name: "크림", description: "우유의 지방 성분을 농축한 유제품입니다.", riskLevel: .lowRisk),
    Ingredient(name: "코코아추출물", description: "코코아 나무의 씨앗에서 추출한 성분으로, 초콜릿 맛과 향을 제공합니다.", riskLevel: .lowRisk),
    Ingredient(name: "합성향료(카라멜향,크림향)", description: "인공적으로 제조한 향료로, 특정한 향을 내기 위해 사용됩니다.", riskLevel: .lowRisk),
    Ingredient(name: "덱스트린", description: "전분에서 유도된 탄수화물로, 소화가 잘되는 형태입니다.", riskLevel: .lowRisk),
    Ingredient(name: "비타민C", description: "항산화제로 작용하는 비타민으로, 면역 기능을 강화하고 콜라겐 형성을 돕습니다.", riskLevel: .lowRisk),
    Ingredient(name: "과채쥬스", description: "다양한 과일과 채소를 착즙하여 만든 주스입니다.", riskLevel: .lowRisk),
    Ingredient(name: "스피루리나추출물", description: "스피루리나라는 청록색 조류에서 추출한 성분으로, 단백질과 항산화 물질이 풍부합니다.", riskLevel: .lowRisk),
    Ingredient(name: "심황색소", description: "강황에서 추출한 성분으로, 노란색을 띄며 항염 효과가 있습니다.", riskLevel: .lowRisk),
    Ingredient(name: "구연산철암모늄", description: "철분 보충제로, 빈혈 예방에 도움을 줍니다.", riskLevel: .lowRisk),
    Ingredient(name: "니코틴산아미드", description: "비타민 B3의 한 형태로, 에너지 대사를 돕고 피부 건강을 촉진합니다.", riskLevel: .lowRisk),
    Ingredient(name: "산화아연", description: "아연 보충제로, 면역 시스템을 강화하고 피부 건강에 도움을 줍니다.", riskLevel: .lowRisk),
    Ingredient(name: "비타민B6염산염", description: "비타민 B6의 한 형태로, 신경 기능과 대사를 지원합니다.", riskLevel: .lowRisk),
    Ingredient(name: "비타민B1염산염", description: "비타민 B1의 한 형태로, 에너지 대사를 돕고 신경 기능을 지원합니다.", riskLevel: .lowRisk),
    Ingredient(name: "엽산", description: "비타민 B9로, 세포 성장과 DNA 합성에 중요합니다.", riskLevel: .lowRisk),
    Ingredient(name: "비타민B2", description: "리보플라빈으로, 에너지 대사와 세포 기능을 지원합니다.", riskLevel: .lowRisk),
    Ingredient(name: "현미유", description: "현미에서 추출한 기름으로, 영양가가 높고 건강에 좋습니다.", riskLevel: .lowRisk),
    Ingredient(name: "볶은 귀리분말", description: "볶은 귀리를 분말 형태로 만든 것으로, 영양가가 높고 다양한 요리에 사용됩니다.", riskLevel: .lowRisk),
    Ingredient(name: "태움용융소금", description: "고온에서 녹인 소금으로, 조미료로 사용됩니다.", riskLevel: .lowRisk),
    Ingredient(name: "카라기난", description: "해조류에서 추출한 식품 첨가물로, 점성과 안정성을 제공합니다.", riskLevel: .lowRisk),
    Ingredient(name: "수산화칼슘", description: "식품 첨가물로, pH 조절과 살균 목적으로 사용됩니다.", riskLevel: .lowRisk),
    Ingredient(name: "커드란", description: "미생물 발효로 얻은 다당류로, 식품의 질감을 향상시킵니다.", riskLevel: .lowRisk),
    Ingredient(name: "효모", description: "발효 과정에 사용되는 미생물로, 빵을 부풀게 하고 맛을 더합니다.", riskLevel: .lowRisk),
    Ingredient(name: "현미", description: "껍질을 벗기지 않은 쌀로, 섬유질과 영양소가 풍부합니다.", riskLevel: .lowRisk),
    Ingredient(name: "렌틸콩", description: "단백질과 섬유질이 풍부한 콩으로, 영양가 높은 식품입니다.", riskLevel: .lowRisk),
    Ingredient(name: "찰현미", description: "찰기가 있는 현미로, 식감이 부드럽고 영양가가 높습니다.", riskLevel: .lowRisk),
    Ingredient(name: "멥쌀", description: "일반 쌀로, 주로 밥을 지을 때 사용됩니다.", riskLevel: .lowRisk),
    Ingredient(name: "찹쌀", description: "찰기가 있는 쌀로, 떡과 같은 쫀득한 음식에 사용됩니다.", riskLevel: .lowRisk),
    Ingredient(name: "흑미", description: "검은 쌀로, 안토시아닌이 풍부해 항산화 작용을 합니다.", riskLevel: .lowRisk),
    Ingredient(name: "수수", description: "곡물의 한 종류로, 글루텐이 없고 소화가 잘 됩니다.", riskLevel: .lowRisk),
    Ingredient(name: "기장", description: "작은 곡물로, 비타민과 미네랄이 풍부합니다.", riskLevel: .lowRisk),
    Ingredient(name: "팥", description: "단백질과 섬유질이 많은 콩류로, 다양한 요리에 사용됩니다.", riskLevel: .lowRisk),
    Ingredient(name: "검정찰현미", description: "검은색을 띠는 찰기가 있는 현미로, 영양가가 높고 식감이 좋습니다.", riskLevel: .lowRisk),
    Ingredient(name: "찰수수", description: "찰기가 있는 수수로, 쫀득한 식감을 주며 글루텐이 없습니다.", riskLevel: .lowRisk),
    Ingredient(name: "귀리", description: "단백질과 섬유질이 풍부한 곡물로, 주로 오트밀이나 건강식으로 사용됩니다.", riskLevel: .lowRisk),
    Ingredient(name: "락타아제", description: "유당을 분해하는 효소로, 유당불내증을 가진 사람들이 유제품을 섭취할 수 있도록 도움을 줍니다.", riskLevel: .lowRisk),
    Ingredient(name: "두류고형분", description: "콩에서 얻은 고형 성분으로, 영양을 높이고 식품의 질감을 개선합니다.", riskLevel: .lowRisk),
    Ingredient(name: "찰흑미", description: "찰기가 있는 검은 쌀로, 영양가가 높고 식감이 쫀득합니다.", riskLevel: .lowRisk),
    Ingredient(name: "서리태", description: "검은콩의 한 종류로, 단백질과 영양이 풍부합니다.", riskLevel: .lowRisk),
    Ingredient(name: "흑태", description: "검은콩으로, 단백질과 영양이 풍부합니다.", riskLevel: .lowRisk),
    Ingredient(name: "검은깨", description: "검은색 참깨로, 칼슘과 미네랄이 풍부합니다.", riskLevel: .lowRisk),
    Ingredient(name: "탄산칼슘", description: "칼슘 보충제로, 뼈 건강을 돕는 식품 첨가물입니다.", riskLevel: .lowRisk),
    Ingredient(name: "니코틴산아미드", description: "비타민 B3의 한 형태로, 에너지 대사를 돕고 피부 건강을 촉진합니다.", riskLevel: .lowRisk),
    Ingredient(name: "산화아연", description: "아연 보충제로, 면역 시스템을 강화하고 피부 건강에 도움을 줍니다.", riskLevel: .lowRisk),
    Ingredient(name: "비타민B6염산염", description: "비타민 B6의 한 형태로, 신경 기능과 대사를 지원합니다.", riskLevel: .lowRisk),
    Ingredient(name: "비타민B1염산염", description: "비타민 B1의 한 형태로, 에너지 대사를 돕고 신경 기능을 지원합니다.", riskLevel: .lowRisk),
    Ingredient(name: "엽산", description: "비타민 B9로, 세포 성장과 DNA 합성에 중요합니다.", riskLevel: .lowRisk),
    Ingredient(name: "비타민B2", description: "리보플라빈으로, 에너지 대사와 세포 기능을 지원합니다.", riskLevel: .lowRisk),
    Ingredient(name: "해조분말", description: "해조류를 분말 형태로 가공한 것으로, 미네랄과 영양소가 풍부합니다.", riskLevel: .lowRisk),
    Ingredient(name: "태움용융소금", description: "고온에서 녹인 소금으로, 조미료로 사용됩니다.", riskLevel: .lowRisk),
    Ingredient(name: "구연산철암모늄", description: "철분 보충제로, 빈혈 예방에 도움을 줍니다.", riskLevel: .lowRisk),
    Ingredient(name: "비타민B9", description: "세포 성장, DNA 합성, 적혈구 형성에 중요한 비타민입니다.", riskLevel: .lowRisk),
    Ingredient(name: "카라멜색소IV", description: "카라멜 색소 IV는 설탕을 가열하여 만든 색소로, 주로 갈색 음료에 사용됩니다.", riskLevel: .lowRisk),
    Ingredient(name: "인산", description: "인산은 무기산의 하나로, 산미료로 사용됩니다.", riskLevel: .lowRisk),
    Ingredient(name: "천연향료", description: "천연 향료는 식물, 과일, 허브 등 자연 원료에서 추출한 향료입니다.", riskLevel: .lowRisk),
    Ingredient(name: "옥배유", description: "옥수수 배아에서 추출한 기름입니다.", riskLevel: .lowRisk),
    Ingredient(name: "검은참깨페이스트", description: "검은참깨를 갈아서 만든 페이스트입니다. 고소한 맛을 더하고, 건강에 좋은 지방과 항산화 성분을 제공합니다.", riskLevel: .lowRisk),
    Ingredient(name: "구연산나트륨", description: "구연산과 나트륨의 결합물로, 산도 조절제로 사용됩니다.", riskLevel: .lowRisk),
    Ingredient(name: "글리세린지방산에스테르", description: "글리세린과 지방산이 결합한 화합물입니다.", riskLevel: .lowRisk),

    // 안전
    Ingredient(name: "정제수", description: "정제수는 불순물을 제거하여 순수하게 만든 물입니다.", riskLevel: .safe),
    Ingredient(name: "이산화탄소", description: "이산화탄소는 무색, 무취의 기체로, 탄소와 산소 원자로 구성됩니다.", riskLevel: .safe),
    Ingredient(name: "구연산", description: "구연산은 자연적으로 레몬, 라임, 기타 감귤류에서 발견되는 산입니다.", riskLevel: .safe),
    Ingredient(name: "혼합제제(유화제,합성향료,정제수,오렌지오일)", description: "유화제: 물과 기름을 혼합하여 균일한 혼합물을 만듦. 합성향료: 인공적으로 제조한 향료. 오렌지오일: 오렌지에서 추출한 오일.", riskLevel: .safe),
    Ingredient(name: "혼합제제(유화제,합성향료,라임오일)", description: "유화제: 물과 기름을 혼합하여 균일한 혼합물을 만듦. 합성향료: 인공적으로 제조한 향료. 라임오일: 라임에서 추출한 오일.", riskLevel: .safe),
    Ingredient(name: "효소초리루틴", description: "루틴은 플라보노이드의 일종으로, 항산화 작용을 합니다. 효소 처리를 통해 안정성과 생체 이용률을 높인 형태입니다.", riskLevel: .safe),
    Ingredient(name: "원액두유", description: "원액두유는 대두(콩)에서 추출한 순수한 두유입니다.", riskLevel: .safe),
    Ingredient(name: "검은콩추출액", description: "검은콩에서 추출한 액체로, 검은콩의 영양성분이 포함되어 있습니다.", riskLevel: .safe),
    Ingredient(name: "누룽지분말", description: "밥을 눌러 만든 누룽지를 분말 형태로 만든 것입니다.", riskLevel: .safe),
    Ingredient(name: "영양강화제", description: "특정 영양소를 보강하기 위해 첨가된 성분입니다.", riskLevel: .safe),
    Ingredient(name: "드라이비타민D3", description: "건조한 형태의 비타민 D3입니다.", riskLevel: .safe),
    Ingredient(name: "파인애플청징농충액", description: "파인애플 주스를 농축한 액체로, 천연 단맛과 향을 제공합니다.", riskLevel: .safe)
]


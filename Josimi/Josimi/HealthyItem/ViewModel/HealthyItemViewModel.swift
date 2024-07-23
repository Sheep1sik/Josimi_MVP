//
//  HealthyItemViewModel.swift
//  Josimi
//
//  Created by 양원식 on 7/23/24.
//

import Foundation

class HealthyItemViewModel: ObservableObject {
    @Published var healthyFood: HealthyFood
    
    init(healthyFood: HealthyFood) {
        self.healthyFood = healthyFood
    }
    
    func countRiskLevels() -> (highRisk: Int, moderateRisk: Int, lowRisk: Int, safe: Int) {
        var highRiskCount = 0
        var moderateRiskCount = 0
        var lowRiskCount = 0
        var safeCount = 0
        
        for ingredient in healthyFood.ingredients {
            if let riskLevel = ingredientsList.first(where: { $0.name == ingredient })?.riskLevel {
                switch riskLevel {
                case .highRisk:
                    highRiskCount += 1
                case .moderateRisk:
                    moderateRiskCount += 1
                case .lowRisk:
                    lowRiskCount += 1
                case .safe:
                    safeCount += 1
                }
            }
        }
        
        return (highRiskCount, moderateRiskCount, lowRiskCount, safeCount)
    }
    
    func highRiskIngredients() -> [Ingredient] {
        return healthyFood.ingredients.compactMap { ingredientName in
            if let ingredient = ingredientsList.first(where: { $0.name == ingredientName }), ingredient.riskLevel == .highRisk {
                return ingredient
            }
            return nil
        }
    }
    func moderateRiskIngredients() -> [Ingredient] {
        return healthyFood.ingredients.compactMap { ingredientName in
            if let ingredient = ingredientsList.first(where: { $0.name == ingredientName }), ingredient.riskLevel == .moderateRisk {
                return ingredient
            }
            return nil
        }
    }
    func lowRiskIngredients() -> [Ingredient] {
        return healthyFood.ingredients.compactMap { ingredientName in
            if let ingredient = ingredientsList.first(where: { $0.name == ingredientName }), ingredient.riskLevel == .lowRisk {
                return ingredient
            }
            return nil
        }
    }

    func safeRiskIngredients() -> [Ingredient] {
        return healthyFood.ingredients.compactMap { ingredientName in
            if let ingredient = ingredientsList.first(where: { $0.name == ingredientName }), ingredient.riskLevel == .safe {
                return ingredient
            }
            return nil
        }
    }

}


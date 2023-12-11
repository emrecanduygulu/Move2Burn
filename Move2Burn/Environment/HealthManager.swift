//
//  HealthManager.swift
//  Move2Burn
//
//  Created by emre can duygulu on 11.12.2023.
//

import Foundation
import HealthKit

class HealthManager: ObservableObject {
    
    let healthStore = HKHealthStore()
    
    init() {
        let calories = HKQuantityType(.activeEnergyBurned)
        
        let healthTypes: Set = [calories]
        
        Task {
            do {
               try await healthStore.requestAuthorization(toShare:[], read:healthTypes)
            } catch {
                print("error fetching health data")
            }
        }
    }
}

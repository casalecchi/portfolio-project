//
//  HealthKitManager.swift
//  Protfolio Project
//
//  Created by Felipe Casalecchi on 15/10/25.
//

import Foundation
import HealthKit
import Observation

@Observable class HealthKitManager {
    let store = HKHealthStore()
    let types: Set = [HKQuantityType(.stepCount), HKQuantityType(.bodyMass)]
    
//    func addSimulatorData() async {
//        var mockSample: [HKQuantitySample] = []
//        
//        for i in 0..<28 {
//            let stepQuantity = HKQuantity(unit: .count(), doubleValue: .random(in: 4000...20000))
//            let weightQuantity = HKQuantity(unit: .gram(), doubleValue: .random(in: (80_000 + Double(i/3)...82_000 + Double(i/3))))
//            
//            let startDate = Calendar.current.date(byAdding: .day, value: -i, to: .now)!
//            let endDate = Calendar.current.date(byAdding: .second, value: 1, to: startDate)!
//            
//            let stepSample = HKQuantitySample(type: HKQuantityType(.stepCount), quantity: stepQuantity, start: startDate, end: endDate)
//            
//            let weightSample = HKQuantitySample(type: HKQuantityType(.bodyMass), quantity: weightQuantity, start: startDate, end: endDate)
//            
//            mockSample.append(stepSample)
//            mockSample.append(weightSample)
//        }
//        
//        try! await store.save(mockSample)
//        print("Dummy data sent up!")
//    }
}

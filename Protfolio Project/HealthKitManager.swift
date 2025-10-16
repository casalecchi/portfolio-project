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
}

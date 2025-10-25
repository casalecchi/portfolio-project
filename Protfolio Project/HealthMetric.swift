//
//  HealthMetric.swift
//  Protfolio Project
//
//  Created by Felipe Casalecchi on 25/10/25.
//

import Foundation

struct HealthMetric: Identifiable {
    let id = UUID()
    let date: Date
    let value: Double
}

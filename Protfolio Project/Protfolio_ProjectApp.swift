//
//  Protfolio_ProjectApp.swift
//  Protfolio Project
//
//  Created by Felipe Casalecchi on 12/10/25.
//

import SwiftUI

@main
struct Protfolio_ProjectApp: App {
    let hkManager = HealthKitManager()
    
    var body: some Scene {
        WindowGroup {
            DashboardView()
                .environment(hkManager)
        }
    }
}

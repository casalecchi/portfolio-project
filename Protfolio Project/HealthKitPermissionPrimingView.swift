//
//  HealthKitPermissionPrimingView.swift
//  Protfolio Project
//
//  Created by Felipe Casalecchi on 14/10/25.
//

import SwiftUI
import HealthKitUI

struct HealthKitPermissionPrimingView: View {
    @Environment(HealthKitManager.self) private var hkManager
    @Environment(\.dismiss) private var dismiss
    @State private var isShowingHelaathKitPermission = false
    
    var description = """
        This app displays your step and weight data in interactive charts.
        
        You can also add new step or weigth data to Apple Health from this app. Your data is private and secured.
        """
    var body: some View {
        VStack {
            Spacer()
            
            VStack(alignment: .leading, spacing: 20) {
                Image(.appleHealth)
                    .resizable()
                    .frame(width: 90, height: 90)
                    .shadow(color: .gray.opacity(0.3), radius: 10)
                
                Text("Apple Health Integration")
                    .font(.title2).bold()
                
                Text(description)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            Button("Connect Apple Health") {
                isShowingHelaathKitPermission = true
            }
            .buttonStyle(.borderedProminent)
            .tint(.pink)
            
            Spacer()
        }
        .padding(30)
        .healthDataAccessRequest(store: hkManager.store,
                                 shareTypes: hkManager.types,
                                 readTypes: hkManager.types,
                                 trigger: isShowingHelaathKitPermission) { result in
            switch result {
            case .success:
                dismiss()
            case .failure:
                // handle error
                dismiss()
            }
        }
    }
}

#Preview {
    HealthKitPermissionPrimingView()
        .environment(HealthKitManager())
}

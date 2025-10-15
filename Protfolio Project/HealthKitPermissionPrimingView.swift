//
//  HealthKitPermissionPrimingView.swift
//  Protfolio Project
//
//  Created by Felipe Casalecchi on 14/10/25.
//

import SwiftUI

struct HealthKitPermissionPrimingView: View {
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
                // do it later
            }
            .buttonStyle(.borderedProminent)
            .tint(.pink)
            
            Spacer()
        }
        .padding(30)
    }
}

#Preview {
    HealthKitPermissionPrimingView()
}

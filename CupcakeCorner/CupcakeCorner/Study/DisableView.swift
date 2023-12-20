//
//  DisableView.swift
//  CupcakeCorner
//
//  Created by OLEKSANDR ISAIEV on 20.12.2023.
//

import SwiftUI

struct DisableView: View {
    @State private var userName = ""
    @State private var email = ""
    
    var disableForm: Bool {
        userName.count < 5 || email.count < 5
    }
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $userName)
                TextField("Email", text: $email)
            }
            Section {
                Button("Create account") {
                    print("Creating account...")
                }
            }
            .disabled(disableForm)
        }
    }
}

#Preview {
    DisableView()
}

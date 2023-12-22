//
//  CupcakeCornerView.swift
//  CupcakeCorner
//
//  Created by OLEKSANDR ISAIEV on 22.12.2023.
//

import SwiftUI

struct CupcakeCornerView: View {
    @State private var order = Order()
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Picker("Select your cake type", selection: $order.type) {
                        ForEach(Order.types.indices) {
                            Text(Order.types[$0])
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    CupcakeCornerView()
}

//
//  HapticEffectsView.swift
//  CupcakeCorner
//
//  Created by OLEKSANDR ISAIEV on 21.12.2023.
//

import SwiftUI

struct HapticEffectsView: View {
    @State private var counter = 0
    
    var body: some View {
        Button("Tap counts \(counter)") {
            counter += 1
        }
        .sensoryFeedback(.increase, trigger: counter)
    }
}

#Preview {
    HapticEffectsView()
}

//
//  HapticEffectsView.swift
//  CupcakeCorner
//
//  Created by OLEKSANDR ISAIEV on 21.12.2023.
//

import SwiftUI
import CoreHaptics

struct HapticEffectsView: View {
    @State private var counter = 0
    @State private var engine: CHHapticEngine?
    
    var body: some View {
        Button("Tap counts \(counter)") {
            counter += 1
        }
        .sensoryFeedback(.increase, trigger: counter)
    }
    
    private func prepareHaptics() {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
        
        do {
            engine = try CHHapticEngine()
            try engine?.start()
        } catch {
            print("There was an error creating the engine \(error.localizedDescription)")
        }
    }
}

#Preview {
    HapticEffectsView()
}

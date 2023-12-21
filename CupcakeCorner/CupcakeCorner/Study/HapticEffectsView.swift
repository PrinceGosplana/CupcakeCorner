//
//  HapticEffectsView.swift
//  CupcakeCorner
//
//  Created by OLEKSANDR ISAIEV on 21.12.2023.
//

import SwiftUI
import CoreHaptics

struct HapticEffectsView: View {
    @State private var engine: CHHapticEngine?
    
    var body: some View {
        Button("Play haptic") {
            complexSuccess()
        }
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
    
    private func complexSuccess() {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
        
        var events = [CHHapticEvent]()
        
        let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 1)
        let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 1)
        let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: 0)
        events.append(event)
        
        do {
            let pattern = try CHHapticPattern(events: events, parameters: [])
            let player = try engine?.makePlayer(with: pattern)
            try player?.start(atTime: 0)
        } catch {
            print("Failed to play patterns \(error.localizedDescription)")
        }
    }
}

#Preview {
    HapticEffectsView()
}

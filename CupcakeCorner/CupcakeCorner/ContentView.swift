//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by OLEKSANDR ISAIEV on 17.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var results = [Result]()
    
    var body: some View {
        List(results, id: \.trackId) { item in
            VStack(alignment: .leading) {
                Text(item.trackName)
                    .font(.headline)
                
                Text(item.collectionName)
            }
        }
        .task {
            await loadData()
        }
    }
    
    private func loadData() async {
        guard let url = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song") else {
            print("Invalid URL")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            guard let decodeResponse = try? JSONDecoder().decode(Response.self, from: data) else {
                print("Invalid data decode")
                return
            }
            
            results = decodeResponse.results
        } catch {
            print("Invalid data")
        }
    }
}

#Preview {
    ContentView()
}

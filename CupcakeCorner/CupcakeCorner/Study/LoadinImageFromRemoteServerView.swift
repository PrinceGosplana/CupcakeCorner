//
//  LoadinImageFromRemoteServerView.swift
//  CupcakeCorner
//
//  Created by OLEKSANDR ISAIEV on 19.12.2023.
//

import SwiftUI

struct LoadinImageFromRemoteServerView: View {
    var body: some View {
//        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { image in
//            image
//                .resizable()
//                .scaledToFit()
//        } placeholder: {
////            Color.red
//            ProgressView()
//        }
//        .frame(width: 200, height: 200)
        
        // or we can use phase instead of image
        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Text("There was an error loading the image")
            } else {
                ProgressView()
            }
            
            
        }
        .frame(width: 200, height: 200)
    }
}

#Preview {
    LoadinImageFromRemoteServerView()
}

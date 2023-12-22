//
//  CodableObservableView.swift
//  CupcakeCorner
//
//  Created by OLEKSANDR ISAIEV on 21.12.2023.
//

import SwiftUI

struct CodableObservableView: View {
    var body: some View {
        Button("Encode Taylor", action: encodeTaylor)
    }
    
    private func encodeTaylor() {
        let data = try! JSONEncoder().encode(User())
        let str = String(decoding: data, as: UTF8.self)
        print(str)
    }
}

#Preview {
    CodableObservableView()
}

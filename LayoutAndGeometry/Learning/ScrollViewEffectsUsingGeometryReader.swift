//
//  ScrollViewEffectsUsingGeometryReader.swift
//  LayoutAndGeometry
//
//  Created by Takasur Azeem on 03/08/2022.
//

import SwiftUI

struct ScrollViewEffectsUsingGeometryReader: View {
    let colors: [Color] = [.green, .blue, .purple, .gray]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(0..<50) { index in
                    GeometryReader { geo in
                        Text("Row #\(index)")
                            .font(.title)
                            .background(colors[index % colors.count])
                            .rotation3DEffect(.degrees(-geo.frame(in: .global).minX) / 8, axis: (x: 0, y: 1, z: 0))
                            .frame(width: 200, height: 200)
                    }
                    .frame(width: 200, height: 200)
                }
            }
        }
    }
}

struct ScrollViewEffectsUsingGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewEffectsUsingGeometryReader()
    }
}

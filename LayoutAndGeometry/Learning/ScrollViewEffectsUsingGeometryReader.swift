//
//  ScrollViewEffectsUsingGeometryReader.swift
//  LayoutAndGeometry
//
//  Created by Takasur Azeem on 03/08/2022.
//

import SwiftUI

struct ScrollViewEffectsUsingGeometryReader: View {
    
    var body: some View {
        GeometryReader { fullView in
            ScrollView(.vertical) {
                ForEach(0..<50) { index in
                    GeometryReader { geo in
                        Text("Row #\(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(Color(hue: min(1, geo.frame(in: .global).minY / fullView.size.height), saturation: 1, brightness: 1))
                            .rotation3DEffect(.degrees(geo.frame(in: .global).minY - fullView.size.height / 2) / 5, axis: (x: 0, y: 1, z: 0))
                            .opacity(geo.frame(in: .global).minY / 200)
                            .scaleEffect(max(0.5, geo.frame(in: .global).minY / geo.size.height * 1.5 * 0.08))

                    }
                    .frame(height: 40)
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

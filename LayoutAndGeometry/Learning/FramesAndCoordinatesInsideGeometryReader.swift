//
//  FramesAndCoordinatesInsideGeometryReader.swift
//  LayoutAndGeometry
//
//  Created by Takasur Azeem on 31/07/2022.
//

import SwiftUI


/// Always keep in mind SwiftUI’s three-step layout system when working with GeometryReader: parent proposes a size for the child, the child uses that to determine its own size, and parent uses that to position the child appropriately.
struct FramesAndCoordinatesInsideGeometryReader: View {
    var body: some View {
        OuterView()
            .background(.blue.opacity(0.7))
            .coordinateSpace(name: "Custom")
    }
}

struct FramesAndCoordinatesInsideGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        FramesAndCoordinatesInsideGeometryReader()
    }
}

struct OuterView: View {
    var body: some View {
        VStack {
            Text("Top")
            InnerView()
                .background(.green)
            Text("Bottom")
        }
    }
}


struct InnerView: View {
    var body: some View {
        HStack {
            Text("Left")
            GeometryReader { geo in
                Text("Center")
                    .background(.blue)
                    .onTapGesture {
                        print("Global center: \(geo.frame(in: .global).midX) x \(geo.frame(in: .global).midY)")
                        print("Custom center: \(geo.frame(in: .named("Custom")).midX) x \(geo.frame(in: .named("Custom")).midY)")
                        print("Local center: \(geo.frame(in: .local).midX) x \(geo.frame(in: .local).midY)")
                    }
            }
            .background(.orange)
            Text("Right")
        }
    }
}

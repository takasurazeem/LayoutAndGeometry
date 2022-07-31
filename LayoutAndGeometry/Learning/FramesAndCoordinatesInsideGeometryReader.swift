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
        VStack {
            GeometryReader { geo in
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .frame(width: geo.size.width * 0.9, height: 40)
                    .background(.green.opacity(0.7))
            }
            .background(.green.opacity(0.4))
            Text("More text")
                .background(.blue.opacity(0.7))
        }
    }
}

struct FramesAndCoordinatesInsideGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        FramesAndCoordinatesInsideGeometryReader()
    }
}

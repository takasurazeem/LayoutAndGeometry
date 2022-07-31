//
//  AlignmentGuides.swift
//  LayoutAndGeometry
//
//  Created by Takasur Azeem on 31/07/2022.
//

import SwiftUI

struct AlignmentGuides: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            Text("Live")
                .font(.caption)
            Text("long")
            Text("and")
                .font(.title)
            Text("prosper")
                .font(.largeTitle)
        }
    }
}

struct AlignmentGuides_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentGuides()
    }
}

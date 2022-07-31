//
//  AlignmentGuides.swift
//  LayoutAndGeometry
//
//  Created by Takasur Azeem on 31/07/2022.
//

import SwiftUI

struct AlignmentGuides: View {
    var body: some View {
        Text("Live long and prosper")
            .frame(width: 300, height: 300, alignment: .topLeading)
    }
}

struct AlignmentGuides_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentGuides()
    }
}

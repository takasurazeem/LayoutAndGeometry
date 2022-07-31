//
//  AbsolutePositioning.swift
//  LayoutAndGeometry
//
//  Created by Takasur Azeem on 31/07/2022.
//

import SwiftUI

struct AbsolutePositioning: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .offset(x: 100, y: 100)
            .background(.green.opacity(0.7))
        /**
            If you move the modifier order so that background() comes before offset() then things work more like you might have expected, showing once again that modifier order matters.
         */
    }
}

struct AbsolutePositioning_Previews: PreviewProvider {
    static var previews: some View {
        AbsolutePositioning()
    }
}

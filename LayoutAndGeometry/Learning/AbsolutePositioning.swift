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
            .position(x: 100, y: 100)
            .background(.green.opacity(0.7))
    }
}

struct AbsolutePositioning_Previews: PreviewProvider {
    static var previews: some View {
        AbsolutePositioning()
    }
}

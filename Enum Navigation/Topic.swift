//
//  Topic.swift
//  Enum Navigation
//
//  Created by Marcin Jędrzejak on 02/03/2023.
//

import SwiftUI

enum Topic: String, Hashable, CaseIterable, Identifiable, View {
    case topic1 = "Green Room"
    case topic2 = "Stewart Lynch"
    case topic3 = "Rainbow"
    case topic4 = "Inukshuk"
    
    var id: String {
        self.rawValue
    }
    
    var body: some View {
        switch self {
        case .topic1:
            Topic1View(title: self.rawValue)
        case .topic2:
            Topic2View(title: self.rawValue)
        case .topic3:
            Topic3View(title: self.rawValue, colors: [
                .red,
                .orange,
                .yellow,
                .green,
                .blue,
                .indigo,
                .purple
            ])
        case .topic4:
            Topic4View(title: self.rawValue, imageName: "Inukshuk")
        }
    }
}

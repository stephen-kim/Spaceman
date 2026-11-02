//
//  VisibleSpacesMode.swift
//  Spaceman
//
//  Created by ultravioletcatastrophe on 16/9/2025
//  Controls which spaces are shown in the status bar.
//

import Foundation

enum VisibleSpacesMode: Int, CaseIterable {
    case all = 0
    case neighbors = 1
    case currentOnly = 2
    /// Only the current space, labelled "current/total" (e.g. "1/6").
    case currentOverTotal = 3

    /// True for the modes that show a single icon per display.
    var showsCurrentSpaceOnly: Bool {
        self == .currentOnly || self == .currentOverTotal
    }

    /// Sentence case for preferences UI.
    var pickerLabel: String {
        switch self {
        case .all:              return String(localized: "All spaces")
        case .neighbors:        return String(localized: "Nearby spaces")
        case .currentOnly:      return String(localized: "Current only")
        case .currentOverTotal: return String(localized: "Current / total")
        }
    }

    /// Title case for right-click menu.
    var menuLabel: String {
        switch self {
        case .all:              return String(localized: "All Spaces")
        case .neighbors:        return String(localized: "Nearby Spaces")
        case .currentOnly:      return String(localized: "Current Only")
        case .currentOverTotal: return String(localized: "Current / Total")
        }
    }
}

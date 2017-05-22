//
//  ColorEnum.swift
//  FakeTheBackStack
//
//  Created by Kurt Prenger on 5/22/17.
//

import UIKit
import Foundation

enum Color: String {
    case red
    case orange
    case yellow
    case green
    case blue
    case indigo
    case violet
    
    var color: UIColor {
        switch self {
        case .red:
            return #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        case .orange:
            return #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        case .yellow:
            return #colorLiteral(red: 0.9678747823, green: 1, blue: 0, alpha: 1)
        case .green:
            return #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        case .blue:
            return #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        case .indigo:
            return #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        case .violet:
            return #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        }
    }
    
    var index: Int {
        switch self {
        case .red:
            return 0
        case .orange:
            return 1
        case .yellow:
            return 2
        case .green:
            return 3
        case .blue:
            return 4
        case .indigo:
            return 5
        case .violet:
            return 6
        }
    }
    
    init(with index: Int) {
        switch index {
        case 0:
            self = .red
        case 1:
            self = .orange
        case 2:
            self = .yellow
        case 3:
            self = .green
        case 4:
            self = .blue
        case 5:
            self = .indigo
        case 6:
            self = .violet
        default:
            self = .red
        }
    }
    
    func colorsUpToAndIncluding() -> Array<Color> {
        var fullArray = [Color]()
        
        for index in 0...self.index {
            fullArray.append(Color(with: index))
        }
        
        return fullArray
    }
}

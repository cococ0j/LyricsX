//
//  StdExtension.swift
//
//  This file is part of LyricsX
//  Copyright (C) 2017 Xander Deng - https://github.com/ddddxxx/LyricsX
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

import Foundation

extension CountableRange {
    
    func clamp(_ value: Bound) -> Bound {
        return Swift.min(upperBound.advanced(by: -1), Swift.max(lowerBound, value))
    }
}

// MARK: - Range

extension CFRange {
    
    var asNS: NSRange {
        return NSRange(location: location, length: length)
    }
}

extension NSRange {
    
    var asCF: CFRange {
        return CFRange(location: location, length: length)
    }
}

extension CFString {
    
    var fullRange: CFRange {
        return CFRange(location: 0, length: CFStringGetLength(self))
    }
}

extension NSString {
    
    var fullRange: NSRange {
        return NSRange(location: 0, length: length)
    }
}

extension String {
    
    var fullRange: NSRange {
        return NSRange(location: 0, length: utf16.count)
    }
}

extension NSAttributedString {
    
    var fullRange: NSRange {
        return NSRange(location: 0, length: length)
    }
}

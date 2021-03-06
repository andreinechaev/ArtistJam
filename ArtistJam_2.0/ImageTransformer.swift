//
//  ImageTransformer.swift
//  ArtistJam
//
//  Created by Andrey on 21.08.15.
//  Copyright © 2015 Andrei Nechaev. All rights reserved.
//

import Foundation
import UIKit

class ImageTransformer : ValueTransformer {
    
    override class func transformedValueClass() -> AnyClass {
        return NSData.self
    }
    
    override class func allowsReverseTransformation() -> Bool {
        return  true
    }
    
    override func reverseTransformedValue(_ value: Any?) -> Any? {
        if (value == nil) {
            return nil
        }
        
        return UIImage(data: value as! Data)
    }
    
    override func transformedValue(_ value: Any?) -> Any? {
        guard let image = value as? UIImage else {
            return nil
        }
        return image.pngData()
    }
    
}

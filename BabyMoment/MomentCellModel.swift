//
//  MomentCellModel.swift
//  BabyMoment
//
//  Created by Xueliang Zhu on 8/25/16.
//  Copyright © 2016 kotlinchina. All rights reserved.
//

import UIKit
import Photos

struct MomentCellModel {
    var asset: [PHAsset]
    var comments: String?
    var currentDate: NSDate?
    
    init(asset: [PHAsset]) {
        self.asset = asset
        self.currentDate = NSDate()
    }
}

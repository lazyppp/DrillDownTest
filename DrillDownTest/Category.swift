//
//  Category.swift
//  DrillDownTest
//
//  Created by 洋一郎 日野 on 2015/07/09.
//  Copyright (c) 2015年 GakkoNet. All rights reserved.
//

import Foundation

class Category {
    var name: String
    var terms : [Term]
    init( name: String, terms: [Term]) {
        self.name = name
        self.terms = terms
    }
}
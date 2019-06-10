//
//  Models.swift
//  ThingsNearby
//
//  Created by Simon Haycock on 2/6/19.
//  Copyright © 2019 Expedia. All rights reserved.
//

import Foundation

struct Thumbnail: Decodable {
    let source: String
    let width: Int
    let height: Int
}

struct Page: Decodable {
    let pageid: Int
    let title: String
    let thumbnail: Thumbnail?
}

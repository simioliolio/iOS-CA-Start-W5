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

struct Pages: Decodable {
    let pages: [Page]
    func pagesInTitleOrder() -> Pages {
        let sortedPages = pages.sorted { (first: Page, second: Page) -> Bool in
            if first.title < second.title {
                return true
            } else {
                return false
            }
        }
        return Pages(pages: sortedPages)
    }
}

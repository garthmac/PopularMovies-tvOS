//
//  ServiceProvider.swift
//  TopShelfPreview
//
//  Created by iMac 27 on 2015-09-30.
//  Copyright © 2015 iMac 27. All rights reserved.
//

import Foundation
import TVServices

class ServiceProvider: NSObject, TVTopShelfProvider {
    
    override init() {
        super.init()
    }
    
    // MARK: - TVTopShelfProvider protocol
    
    var topShelfStyle: TVTopShelfContentStyle {
        // Return desired Top Shelf style.
        return TVTopShelfContentStyle.Inset
    }
    
    var topShelfItems: [TVContentItem] {
        // Create an array of TVContentItems.
        
        let item1 = TVContentItem(contentIdentifier: TVContentIdentifier(identifier: "tvcId.item1", container: nil)!)
        item1?.imageURL = NSURL(string: "https://daverobertsfilm.files.wordpress.com/2011/02/mashup_montage.jpg")
        let item2 = TVContentItem(contentIdentifier: TVContentIdentifier(identifier: "tvcId.item2", container: nil)!)
        item2?.imageURL = NSURL(string: "http://imgick.mlive.com/home/mlive-media/width620/img/annarbornews_impact/photo/movie-night-at-big-house-7d56cf45191df8fb.jpg")
        return [item1!, item2!]
    }
    
}

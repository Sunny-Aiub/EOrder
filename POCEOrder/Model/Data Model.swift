//
//  Data Model.swift
//  POCEOrder
//
//  Created by Md. Mahadhi Hassan Chowdhury on 11/18/18.
//  Copyright © 2018 Md. Mahadhi Hassan Chowdhury. All rights reserved.
//

import Foundation

let featureImage1 = ["title": "1", "image": "1.jpg" ]
let featureImage2 = ["title": "2", "image": "2.jpg"]
let featureImage3 = ["title": "3", "image": "3.jpg"]
let featureImage4 = ["title": "4", "image": "4"]

var featureArray = [featureImage1,featureImage2,featureImage3,featureImage4 ]

var imageArray = [ "1.jpg", "2.jpg", "3.jpg", "4-1.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpeg", "10.jpeg"]

public struct Item {
    
    var name: String
    var detail: String
    var image: String
    var price : String
    
    public init(name: String, detail: String, image: String, price: String) {
        self.name = name
        self.detail = detail
        self.image = image
        self.price = price
    }
}

public struct Section {
    var name: String
    var items: [Item]
    var collapsed: Bool
    
    public init(name: String, items: [Item], collapsed: Bool = false) {
        self.name = name
        self.items = items
        self.collapsed = collapsed
    }
}

public var sectionsData: [Section] = [
    
    Section(name: "Home & Living", items: [
        
        Item(name: "Camry Mechanical Kitchen Weight Scale", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/c/a/camry-kitchen-scale-orange.jpg", price: "$775"),
        
        Item(name: "Energizer Rechargeable Battery", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/e/n/energizer-recharge-smart-led-monitor.jpg", price: "$909"),
        
        Item(name: "Disney Robot Switch & Socket", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/s/s/ss199.jpg", price: "$199"),
        
        Item(name: "Camry Mechanical Kitchen Weight Scale", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/c/a/camry-kitchen-scale-orange.jpg", price: "$775"),
        
        Item(name: "Energizer Rechargeable Battery", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/e/n/energizer-recharge-smart-led-monitor.jpg", price: "$909"),
        
        Item(name: "Disney Robot Switch & Socket", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/s/s/ss199.jpg", price: "$199")
        
        ]),
    
    Section(name: "Mobile Accessories", items: [
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999"),
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999")
        
        ]),
    
    Section(name: "Electronics & Gadgtets", items: [

        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999"),
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999")
        ]),
    
    Section(name: "Arts & Crafts", items: [
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999"),
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999")
        
        ]),
    
    Section(name: "AutoMobiles", items: [
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999"),
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999")
        
        ]),
    
    Section(name: "Gifts & Toys", items: [
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999"),
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999")
        
        ]),
    
    Section(name: "Below $399", items: [
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$190"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$149"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$129"),
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$109"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$149"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$199")
        
        ])
    
    
]

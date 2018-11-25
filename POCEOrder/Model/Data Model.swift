//
//  Data Model.swift
//  POCEOrder
//
//  Created by Md. Mahadhi Hassan Chowdhury on 11/18/18.
//  Copyright © 2018 Md. Mahadhi Hassan Chowdhury. All rights reserved.
//

import Foundation


let featureImage1 = ["title": "1", "image": "http://eorder.com.bd/pub/media/codazon/slideshow/cache/1900x660/n/o/nobanno_banner_2.png" ]
let featureImage2 = ["title": "2", "image": "http://eorder.com.bd/pub/media/codazon/slideshow/cache/1900x660/c/i/citgard.jpg"]
let featureImage3 = ["title": "3", "image": "http://eorder.com.bd/pub/media/codazon/slideshow/cache/1900x660/e/n/enigma.jpg"]
let featureImage4 = ["title": "4", "image": "http://eorder.com.bd/pub/media/codazon/slideshow/cache/1900x660/k/i/kinlei_jitben_main_banner.jpg"]

var featureArray = [featureImage1,featureImage2,featureImage3,featureImage4 ]

var imageArray = [ "1.jpg", "2.jpg", "3.jpg", "4-1.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpeg", "10.jpeg"]

public struct Item {
    
    var name: String
    var detail: String
    var image: String
    var price : String
    var oldPrice : String
    
    public init(name: String, detail: String, image: String, price: String, oldPrice: String) {
        self.name = name
        self.detail = detail
        self.image = image
        self.price = price
        self.oldPrice = oldPrice
    }
}

public struct HighlightedCategory {
    
    var name: String
    var image: String
    
    public init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}

public struct HighlightedCategoories {
    var name: String
    var highlightedCategories: [HighlightedCategory]
    
    public init(name: String, highlightedCategories: [HighlightedCategory]) {
        self.name = name
        self.highlightedCategories = highlightedCategories
    }
}

public struct Section {
    var name: String
    var items: [Item]
    var collapsed: Bool
    var highlightedCategories : [HighlightedCategory]
    
    
    public init(name: String, items: [Item], collapsed: Bool = false, highlightedCategories:[HighlightedCategory] ) {
        self.name = name
        self.items = items
        self.collapsed = collapsed
        self.highlightedCategories = highlightedCategories
    }
}

public var sectionsData: [Section] = [
    
    Section(name: "CURRENT CAMPAIGNS", items: [
        
        Item(name: "Camry Mechanical Kitchen Weight Scale", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/c/a/camry-kitchen-scale-orange.jpg", price: "$775", oldPrice: "$1075"),
        
        Item(name: "Energizer Rechargeable Battery", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/e/n/energizer-recharge-smart-led-monitor.jpg", price: "$909", oldPrice: "$1075"),
        
        Item(name: "Disney Robot Switch & Socket", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/s/s/ss199.jpg", price: "$199", oldPrice: "$1075"),
        
        Item(name: "Camry Mechanical Kitchen Weight Scale", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/c/a/camry-kitchen-scale-orange.jpg", price: "$775", oldPrice: "$1075"),
        
        Item(name: "Energizer Rechargeable Battery", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/e/n/energizer-recharge-smart-led-monitor.jpg", price: "$909", oldPrice: "$1075"),
        
        Item(name: "Disney Robot Switch & Socket", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/s/s/ss199.jpg", price: "$199", oldPrice: "$1075")
        
        ], highlightedCategories: []),
    
    Section(name: "NEW RELEASED", items: [
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909", oldPrice: "$1075"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999", oldPrice: "$1075"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999", oldPrice: "$14275"),
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909", oldPrice: "$15075"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999", oldPrice: "$19075"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999", oldPrice: "$17075")
        
        ], highlightedCategories: []),
    
    Section(name: "CATAGORY HIGHLIGHT", items: [

        Item(name: "Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909", oldPrice: "$15075"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999", oldPrice: "$16075"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999", oldPrice: "$13075"),
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909", oldPrice: "$15075"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999", oldPrice: "$16075"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999", oldPrice: "$13075")
        ], highlightedCategories: [
            HighlightedCategory(name: "Handicrafts", image: "http://eorder.com.bd/pub/media/wysiwyg/Handicraft.jpg"),
            
            HighlightedCategory(name: "Handicrafts", image: "http://eorder.com.bd/pub/media/wysiwyg/mobile_acc.jpg"),
            
            HighlightedCategory(name: "Handicrafts", image: "http://eorder.com.bd/pub/media/wysiwyg/painting.jpg")
        ]),
    
    Section(name: "BEST SELLERS", items: [
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909", oldPrice: "$15075"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999", oldPrice: "$15075"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999", oldPrice: "$13075"),
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909", oldPrice: "$15075"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999", oldPrice: "$15075"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999", oldPrice: "$13075")
        
        ], highlightedCategories: []),
    
    Section(name: "AutoMobiles", items: [
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909", oldPrice: "$15075"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999", oldPrice: "$15075"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999", oldPrice: "$13075"),
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909", oldPrice: "$16075"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999", oldPrice: "$16075"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999", oldPrice: "$13075")
        
        ], highlightedCategories: []),
    
    Section(name: "Gifts & Toys", items: [
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909", oldPrice: "$16075"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999", oldPrice: "$16075"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999", oldPrice: "$14075"),
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$14909", oldPrice: "$17075"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$14999", oldPrice: "$18075"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$12999", oldPrice: "$14075")
        
        ], highlightedCategories: []),
    
    Section(name: "Below $399", items: [
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$190", oldPrice: "$275"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$149", oldPrice: "$175"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$129", oldPrice: "$175"),
        
        Item(name: "Zhiyun Smooth 4 3 Axis Handheld Gimbal Stabilizer", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/205x205/9df78eab33525d08d6e5fb8d27136e95/g/i/gimble-d0388f5002b9sdfdfa8b4438660ba450988.jpg", price: "$109", oldPrice: "$175"),
        
        Item(name: "Xiaomi Amazfit Stratos Smart Sport Watch ", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-amazfit-startos-samrtsport-watch-international-version.jpg", price: "$149", oldPrice: "$175"),
        
        Item(name: "Microlab Speaker FC861 5:1", detail: "This kitchen scale can meet your basic food weighing needs, with a large bowl. This Kitchen scale is with fashion design, easy to read according to a big dial. It is perfect for precise measuring of different ingredients, as well as for general household use.", image: "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/100x100/9df78eab33525d08d6e5fb8d27136e95/m/i/microlab-speaker-fc861.jpg", price: "$199", oldPrice: "$375")
        
        ], highlightedCategories: [])
    
    
]

//
//  GetImages.swift
//  POCEOrder
//
//  Created by Md. Mahadhi Hassan Chowdhury on 11/26/18.
//  Copyright © 2018 Md. Mahadhi Hassan Chowdhury. All rights reserved.
//

import Foundation
import UIKit

func fetchImages(arrayOfImages: [String]) -> [UIImage]{
    
    var images = [UIImage]()
    
    for index in arrayOfImages{
        
        do{
            let url = URL(string: index)
            let data = try Data(contentsOf: url!)
            images.append(UIImage(data: data)!)
        }catch{
            print(error)
        }
        print(images.count)
    }
    return images
}

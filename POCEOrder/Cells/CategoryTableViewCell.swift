//
//  CategoryTableViewCell.swift
//  POCEOrder
//
//  Created by Md. Mahadhi Hassan Chowdhury on 11/18/18.
//  Copyright © 2018 Md. Mahadhi Hassan Chowdhury. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{

    @IBOutlet weak var ProductCollectionView: UICollectionView!
    
    
    var sectionForProduct: Int = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
        self.ProductCollectionView.delegate = self
        self.ProductCollectionView.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        print(sectionForProduct)
        print(sectionsData[sectionForProduct].items.count)
       return sectionsData[sectionForProduct].items.count
        
       // return 1

        //return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell: ProductsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "productsCollectionViewCell", for: indexPath) as? ProductsCollectionViewCell
        {
//            let randomNumber = Int(arc4random_uniform(UInt32(imageArray.count)))
//            cell.imageView.image = UIImage(named: imageArray[randomNumber])
            
          do {
                
                let url = URL(string: sectionsData[sectionForProduct].items[indexPath.row].image)
                let data = try Data(contentsOf: url!)
                cell.imageView.image = UIImage(data: data)
            }
            catch{
                print(error)
            }
            
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let size = CGSize(width: 120, height: 120)
        return size
    }
    
}

//
//  ProductOverviewTableViewController.swift
//  POCEOrder
//
//  Created by Md. Mahadhi Hassan Chowdhury on 11/25/18.
//  Copyright © 2018 Md. Mahadhi Hassan Chowdhury. All rights reserved.
//

import UIKit

class ProductOverviewTableViewController: UITableViewController {

    
    @IBOutlet weak var productImageSliderView: UIScrollView!
    
    @IBOutlet weak var sliderImageView: UIImageView!
    @IBOutlet weak var pageCOntrol: UIPageControl!
    
    var frame = CGRect(x:0, y:0, width:0, height:0)
    let products = fetchImages(arrayOfImages:imageArray )
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pageCOntrol.numberOfPages = imageArray.count
        
        //set up slider
        productImageSliderView.isPagingEnabled = true
        productImageSliderView.contentSize = CGSize(width: self.view.bounds.width * CGFloat (featureArray.count), height: 200)
        
        productImageSliderView.showsHorizontalScrollIndicator = false
        productImageSliderView.showsVerticalScrollIndicator = false
        
        loadSliderImages()
    }

    func loadSliderImages() {

        frame = CGRect(x:0, y:0, width: self.productImageSliderView.frame.size.width, height: self.productImageSliderView.frame.size.height)
        
        let imgView = UIImageView(frame: frame)

        for index in 0..<imageArray.count {
            
            frame.origin.x = productImageSliderView.frame.size.width * CGFloat(index)
            frame.size = productImageSliderView.frame.size
            
            do {
                
                let url = URL(string: imageArray[index])
                let data = try Data(contentsOf: url!)
                imgView.image = UIImage(data: data)
                self.productImageSliderView.addSubview(imgView)
            }
            catch{
                print(error)
            }
            
            self.productImageSliderView.contentSize = CGSize(width: productImageSliderView.frame.size.width * CGFloat(imageArray.count), height: productImageSliderView.frame.size.height)
            
            let  pageNumber = productImageSliderView.contentOffset.x
            self.pageCOntrol.currentPage = Int(pageNumber)
            self.pageCOntrol.numberOfPages = imageArray.count
            imgView.tag = index
            
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
            imgView.isUserInteractionEnabled = true
            imgView.addGestureRecognizer(tapGestureRecognizer)
            
        }
        
        
    }
    
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        
        print(tappedImage.tag)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "ShowImageViewController") as! ShowImageViewController
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 0 - shoe detail cell
        // 1 - buy button
        // 2 - shoe full details button cell
        // 3 - you might like this cell
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProductDetailHeaderTableViewCell", for: indexPath) as! ProductDetailHeaderTableViewCell
            //cell.shoe = shoe
            cell.selectionStyle = .none
            
            return cell
        }
        else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BuyButtonTableViewCell", for: indexPath) as! BuyButtonTableViewCell
            
            return cell
        }
        else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProductDetailsTableViewCell", for: indexPath) as! ProductDetailsTableViewCell
            
            return cell
        }
        else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SuggestionTableViewCell", for: indexPath) as! SuggestionTableViewCell
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
    {
        if indexPath.row == 3 {
            if let cell = cell as? SuggestionTableViewCell {
                cell.collectionView.dataSource = self
                cell.collectionView.delegate = self
                cell.collectionView.reloadData()
                cell.collectionView.isScrollEnabled = false
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt
        indexPath: IndexPath) -> CGFloat
    {
        if indexPath.row == 3 {
            return tableView.bounds.width + 68.0
        } else {
            return UITableViewAutomaticDimension
        }
    }
}


extension ProductOverviewTableViewController : UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productsCollectionViewCell", for: indexPath) as! ProductsCollectionViewCell
        // TODO: - get your data model...
       
        //cell.imageView.image = UIImage(named: "")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 5.0
        layout.minimumInteritemSpacing = 2.5
        
        let numberOfItemsPerRow: CGFloat = 2.0
        let itemWidth = (collectionView.bounds.width - layout.minimumLineSpacing) / numberOfItemsPerRow
        
        return CGSize(width: itemWidth, height: itemWidth)
    }
    
}


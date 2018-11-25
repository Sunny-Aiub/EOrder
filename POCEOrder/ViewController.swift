//
//  ViewController.swift
//  POCEOrder
//
//  Created by Md. Mahadhi Hassan Chowdhury on 11/18/18.
//  Copyright © 2018 Md. Mahadhi Hassan Chowdhury. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var featureSliderView: UIScrollView!
    @IBOutlet weak var searchField: SearchTextField!
    @IBOutlet weak var CategoryWithProductsTableView: UITableView!
    
    var titleHeader: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.backgroundColor = UIColor(red:0.25, green:0.70, blue:0.90, alpha:1.0)
        
        //setUpNavigationBar(vc: self)
        CategoryWithProductsTableView.estimatedRowHeight = 120
        CategoryWithProductsTableView.tableFooterView = UIView()
        
        CategoryWithProductsTableView.delegate = self
        CategoryWithProductsTableView.dataSource = self
        
        searchField.delegate = self
        
        //set up slider
        featureSliderView.isPagingEnabled = true
        featureSliderView.contentSize = CGSize(width: self.view.bounds.width * CGFloat (featureArray.count), height: 200)
        
        featureSliderView.showsHorizontalScrollIndicator = false
        featureSliderView.showsVerticalScrollIndicator = false
        
        loadFeatureImages()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadFeatureImages() {
        
        for (index, feature) in featureArray.enumerated() {
            
            if let featureView = Bundle.main.loadNibNamed("FeatureView", owner: self, options: nil)?.first as? FeatureView{
                
                do {
                    
                    let url = URL(string: feature["image"]!)
                    let data = try Data(contentsOf: url!)
                    featureView.sliderImage.image = UIImage(data: data)
                }
                catch{
                    print(error)
                }
                
//                featureView.sliderImage.image = UIImage(named: feature["image"]!)
                featureSliderView.addSubview(featureView)
                
                featureView.frame.size.width = self.view.bounds.size.width
                featureView.frame.origin.x = CGFloat(index) *  self.view.bounds.size.width
                featureView.sliderImage.tag = index
                featureView.sliderImagePageControl.numberOfPages = featureArray.count
                featureView.sliderImagePageControl.currentPage = Int(index)
                
                let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
                
                featureView.sliderImage.isUserInteractionEnabled = true
                featureView.sliderImage.addGestureRecognizer(tapGestureRecognizer)
            }
            
        }
    
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        
        print(tappedImage.tag)
        // Your action
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        print("textFieldDidBeginEditing")
//        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
//
//        present(vc!, animated: true)
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        searchField.resignFirstResponder()
        
        return true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionsData.count
        //return 5
    }
    
    // Header
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header") as? MyTableHeader ?? MyTableHeader(reuseIdentifier: "header")
        
        header.titleLabel.text = sectionsData[section].name
        self.titleHeader = sectionsData[section].name
        header.arrowLabel.text = "See More"
        //header.setCollapsed(section[section].collapsed)
        
        header.section = section
       // header.delegate = self
        
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44.0
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1.0
    }

//
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//
//        return sectionsData[section].name
//        //return "Section Title \(section)"
//    }
//
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let section = indexPath.section
        _ = indexPath.row
        
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryTableViewCell", for: indexPath) as? CategoryTableViewCell
        {
            cell.sectionForProduct = section
            print(cell.sectionForProduct)
            cell.titleHeader = titleHeader
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        _ = indexPath.section
        _ = indexPath.row
        
//        if  row == 0 && section == 0{
//            print(section,row)
//        }else{
//            print(section,row)
//
//        }
    }
    
}
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//
//        let page = scrollView.contentOffset.x / scrollView.frame.size.width
//        print(Int(page))
//
//        if let featureView = Bundle.main.loadNibNamed("FeatureView", owner: self, options: nil)?.first as? FeatureView{
//            featureView.sliderImagePageControl.currentPage = Int(page)
//
//            //featureSliderView.addSubview(featureView)
//
//        }
//
//    }
//

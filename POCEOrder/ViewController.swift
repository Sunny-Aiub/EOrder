//
//  ViewController.swift
//  POCEOrder
//
//  Created by Md. Mahadhi Hassan Chowdhury on 11/18/18.
//  Copyright © 2018 Md. Mahadhi Hassan Chowdhury. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var featureSliderView: UIScrollView!
    @IBOutlet weak var searchField: DesignableTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 120
        tableView.tableFooterView = UIView()
        
        tableView.delegate = self
        tableView.dataSource = self
        
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
                
                featureView.sliderImage.image = UIImage(named: feature["image"]!)
                
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
    
    
}


extension ViewController : UITableViewDelegate, UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Section Title \(section)"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let section = indexPath.section
        let row = indexPath.row
        print(section, row)
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as? TableViewCell
        {
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let section = indexPath.section
        let row = indexPath.row
        
        if  row == 0 && section == 0{
            print(section,row)
        }else{
            print(section,row)
            
        }
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

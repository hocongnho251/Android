//
//  FeaturedViewController.swift
//  Restaurant
//
//  Created by Nguyen on 9/19/19.
//  Copyright © 2019 Nguyen. All rights reserved.
//

import UIKit

class FeaturedViewController: UIViewController ,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    // MARK: - IBOutlet
    @IBOutlet weak var sliderCollectionView: UICollectionView!
    @IBOutlet weak var foodsliderCollectionView: UICollectionView!
    @IBOutlet weak var drinksliderCollectionView: UICollectionView!
    @IBOutlet weak var pageView: UIPageControl!
    
    // MARK: - Variable
    var imageArray = ["1","2","3","4","5"]
    var imagedrink = ["6","7","8","9"]
    var imagefood = ["10","11","12","13"]
    
    var timer = Timer()
    var counter = 0
    
    // MARK: - ItemTabbar
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        tabBarItem = UITabBarItem(title: "Featured", image: UIImage(named: "featured"), tag: 1)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.sliderCollectionView?.register(UINib(nibName: "CollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "CollectionViewCell")
        self.foodsliderCollectionView?.register(UINib(nibName: "FoodsDrinkCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "FoodsDrinkCollectionViewCell")
        self.drinksliderCollectionView?.register(UINib(nibName: "FoodsDrinkCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "FoodsDrinkCollectionViewCell")
        
        // MARK: - pageControl
        self.pageView.numberOfPages = imageArray.count
        self.pageView.currentPage = 0
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
        }
    }
    
    // MARK: - changeImage
    @objc func changeImage() {
        if counter < imageArray.count{
            let index = IndexPath.init(item: counter, section: 0)
            self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            counter += 1
        }else{
            counter = 0
            let index = IndexPath.init(item: counter, section: 0)
            self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
        }
    }
    
    
    // MARK: - UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.sliderCollectionView {
            return imageArray.count
        }
        if collectionView == self.foodsliderCollectionView{
            return imagefood.count
        }else{
            return imagedrink.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.sliderCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath as IndexPath) as! CollectionViewCell
            cell.image.image = UIImage(named: imageArray[indexPath.row])
            return cell
        }
        if collectionView == self.foodsliderCollectionView{
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodsDrinkCollectionViewCell", for: indexPath as IndexPath) as! FoodsDrinkCollectionViewCell
            cell1.image.image = UIImage(named: imagefood[indexPath.row])
            return cell1
        }
        else {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodsDrinkCollectionViewCell", for: indexPath as IndexPath) as! FoodsDrinkCollectionViewCell
            cell2.image.image = UIImage(named: imagedrink[indexPath.row])
            return cell2
        }

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.sliderCollectionView{
            return CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        }
        if collectionView == self.sliderCollectionView{
            return CGSize(width: (UIScreen.main.bounds.size.width - 20.0)/2, height: (UIScreen.main.bounds.size.width - 20.0)/2)
        }else{
            return CGSize(width: (UIScreen.main.bounds.size.width - 20.0)/2, height: (UIScreen.main.bounds.size.width - 20.0)/2)
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let witdh = scrollView.frame.width - (scrollView.contentInset.left*2)
        let index = scrollView.contentOffset.x / witdh
        let roundedIndex = round(index)
        self.pageView?.currentPage = Int(roundedIndex)
    }
     // MARK: - Action
 

    @IBAction func sellalldrinkbtn(_ sender: Any) {
        let viewdrink = storyboard?.instantiateViewController(withIdentifier: "sellalldrink") as! SellAllDrinkViewController
        self.navigationController?.pushViewController(viewdrink, animated: true)
    }
    @IBAction func sellallfoodbtn(_ sender: Any) {
        let viewfood = storyboard?.instantiateViewController(withIdentifier: "sellallfood") as! SellAllFoodViewController
        self.navigationController?.pushViewController(viewfood, animated: true)
    }
}

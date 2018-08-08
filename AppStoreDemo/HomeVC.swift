//
//  HomeVC.swift
//  AppStoreDemo
//
//  Created by Abhinay on 08/08/18.
//  Copyright © 2018 ONS. All rights reserved.
//

import UIKit

class HomeVC:UICollectionViewController, UICollectionViewDelegateFlowLayout
{
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetting()
        self.pageAppearance()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        //
    }
    
    //MARK:- Private Methods
    fileprivate func initialSetting()
    {
        navigationItem.title = "App Store Demo"
        collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: CategoryCell.Constant.id)
    }
    
    fileprivate func pageAppearance()
    {
        collectionView?.backgroundColor = .white
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCell.Constant.id, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width, height: 210.0)
    }
    
}

extension UIView
{
    func addConstraint(visualFormat format:String, forViews: UIView...)
    {
        var dict = [String:UIView]()
        for (index, view) in forViews.enumerated()
        {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            dict[key] = view
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: [], metrics: nil, views: dict))
    }
}

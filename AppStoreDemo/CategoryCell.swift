//
//  CategoryCell.swift
//  AppStoreDemo
//
//  Created by Abhinay on 08/08/18.
//  Copyright © 2018 ONS. All rights reserved.
//

import UIKit

class CategoryCell:UICollectionViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate
{
    let lblTitle:UILabel = {
        let label = UILabel()
        label.textColor = .darkGray
        label.font = UIFont.boldSystemFont(ofSize: 17.0)
        label.text = "Best New Apps"
        return label
    }()
    
    fileprivate let collectionView:UICollectionView =
    {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout:layout )
        cv.backgroundColor = .clear
        return cv
    }()
    
    fileprivate let deviderView:UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        satUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func satUpViews()
    {
        collectionView.register(CategoryRecordCell.self, forCellWithReuseIdentifier: CategoryRecordCell.Constant.id)
        collectionView.dataSource = self
        collectionView.delegate = self
    
        addSubview(collectionView)
        addSubview(deviderView)
        addSubview(lblTitle)
        
        setLayout()
    }
    
    fileprivate func setLayout()
    {
        addConstraint(visualFormat: "H:|-20-[v0]|", forViews: lblTitle)
        addConstraint(visualFormat: "H:|[v0]|", forViews: collectionView)
        addConstraint(visualFormat: "H:|[v0]|", forViews: deviderView)
        
        addConstraint(visualFormat: "V:|-3-[v0]-2-[v1]-0.50-[v2(0.50)]|", forViews: lblTitle, collectionView,deviderView)
        
    }
}

extension CategoryCell
{
    struct Constant {
        static let id = "CategoryCell"
    }
}

extension CategoryCell:UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryRecordCell.Constant.id, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: frame.height - 32)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
}


//------------------------------  CategoryRecordCell   ------------------------------

class CategoryRecordCell:UICollectionViewCell
{
    
    fileprivate let appIcon:UIImageView = {
        let imageV = UIImageView()
        imageV.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        imageV.image = #imageLiteral(resourceName: "icon")
        imageV.layer.borderWidth = 0.50
        imageV.layer.borderColor = UIColor.lightGray.cgColor
        imageV.contentMode = .scaleAspectFill
        imageV.layer.cornerRadius = 10.0
        imageV.layer.masksToBounds = true
        return imageV
    }()
    
    let lblTitle:UILabel = {
        let label = UILabel()
        label.textColor = .darkGray
        label.numberOfLines = 2
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        label.text = "Super Mario Game"
        return label
    }()
    
    let lblCategory:UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14.0)
        label.text = "Entertainment"
        return label
    }()
    
    let lblPrice:UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14.0)
        label.text = "$5.99"
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        satUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func satUpViews()
    {
        backgroundColor = .clear
        
        lblTitle.frame = CGRect(x: 0, y: appIcon.frame.size.height + 2, width: 100, height: 40)
        lblCategory.frame = CGRect(x: 0, y: lblTitle.frame.size.height + lblTitle.frame.origin.y, width: 100, height: 17)
        lblPrice.frame = CGRect(x: 0, y: lblCategory.frame.size.height + lblCategory.frame.origin.y, width: 100, height: 17)
        addSubview(appIcon)
        addSubview(lblTitle)
        addSubview(lblCategory)
        addSubview(lblPrice)
        
        setLayout()
    }
    
    fileprivate func setLayout()
    {
//        addConstraint(visualFormat: "H:|[v0]|", forViews: collectionView)
//        addConstraint(visualFormat: "V:|[v0]|", forViews: collectionView)
    }
}
extension CategoryRecordCell
{
    struct Constant {
        static let id = "CategoryRecordCell"
    }
}






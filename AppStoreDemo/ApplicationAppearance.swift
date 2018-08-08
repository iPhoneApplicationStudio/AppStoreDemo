//
//  ApplicationAppearance.swift
//  AppStoreDemo
//
//  Created by Abhinay on 08/08/18.
//  Copyright © 2018 ONS. All rights reserved.
//

import UIKit

class ApplicationAppearance
{
    static func initialAppearance()
    {
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 21.0)]
    }
}


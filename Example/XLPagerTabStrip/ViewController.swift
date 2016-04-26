//
//  ViewController.swift
//  XLPagerTabStrip
//
//  Created by chenchangqing on 04/26/2016.
//  Copyright (c) 2016 chenchangqing. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ViewController: ButtonBarPagerTabStripViewController{
    
    // MARK: Life cycle

    override func viewDidLoad() {
        
        settings.style.buttonBarBackgroundColor = UIColor.groupTableViewBackgroundColor()
        settings.style.selectedBarBackgroundColor = UIColor.blueColor()
        settings.style.buttonBarItemTitleColor = UIColor.darkGrayColor()
        settings.style.buttonBarItemBackgroundColor = UIColor.clearColor()
        
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // MARK: - PagerTabStripDataSource
    
    override func viewControllersForPagerTabStrip(pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        
        let child_1 = SubViewController(nibName: "SubViewController", bundle: nil, itemInfo: IndicatorInfo(title: "child_1"), bgColor: UIColor.magentaColor())
        let child_2 = SubViewController(nibName: "SubViewController", bundle: nil, itemInfo: IndicatorInfo(title: "child_2"), bgColor: UIColor.blackColor())
        let child_3 = SubViewController(nibName: "SubViewController", bundle: nil, itemInfo: IndicatorInfo(title: "child_3"), bgColor: UIColor.whiteColor())
        let child_4 = SubViewController(nibName: "SubViewController", bundle: nil, itemInfo: IndicatorInfo(title: "child_4"), bgColor: UIColor.brownColor())
        return [child_1, child_2, child_3, child_4]
    }
    
    override func reloadPagerTabStripView() {
        super.reloadPagerTabStripView()
        
    }

}


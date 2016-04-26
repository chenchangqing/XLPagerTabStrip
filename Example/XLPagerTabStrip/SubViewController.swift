//
//  SubViewController.swift
//  XLPagerTabStrip
//
//  Created by green on 16/4/26.
//  Copyright © 2016年 CocoaPods. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class SubViewController: UIViewController, IndicatorInfoProvider {
    
    private var itemInfo = IndicatorInfo(title: "Default")
    private var bgColor = UIColor.whiteColor()
    
    // MARK: - Life cycle
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?,itemInfo: IndicatorInfo, bgColor: UIColor) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.view.backgroundColor = bgColor
        
        self.itemInfo = itemInfo
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - IndicatorInfoProvider

    func indicatorInfoForPagerTabStrip(pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        
        return itemInfo
    }
}

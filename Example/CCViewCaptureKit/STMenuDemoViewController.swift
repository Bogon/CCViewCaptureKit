//
//  STMenuDemoViewController.swift
//  STViewCapture
//
//  Created by chenxing.cx on 15/10/28.
//  Copyright © 2015年 startry.com All rights reserved.
//

import UIKit

class STMenuDemoViewController: UIViewController {
    
    fileprivate var viewBtn: UIButton?
    fileprivate var scrollViewBtn: UIButton?
    fileprivate var tableViewBtn: UIButton?
    fileprivate var webViewBtn: UIButton?
    fileprivate var oldWebViewBtn: UIButton?
    fileprivate var collectionBtn: UIButton?
    
// MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initViews();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// MARK: Private Methods
    
    fileprivate func initViews(){
        view.backgroundColor = UIColor.white
        
        let viewBtn = UIButton()
        let scrollViewBtn = UIButton()
        let tableViewBtn  = UIButton()
        let webViewBtn    = UIButton()
        let oldWebViewBtn = UIButton()
        let collectBtn    = UIButton()
        
        viewBtn.setTitleColor(UIColor.black, for: UIControlState.normal)
        scrollViewBtn.setTitleColor(UIColor.black, for: UIControlState.normal)
        tableViewBtn.setTitleColor(UIColor.black, for: UIControlState.normal)
        webViewBtn.setTitleColor(UIColor.black, for: UIControlState.normal)
        oldWebViewBtn.setTitleColor(UIColor.black, for: UIControlState.normal)
        collectBtn.setTitleColor(UIColor.black, for: UIControlState.normal)
        
        viewBtn.setTitle("View示例", for: UIControlState.normal)
        scrollViewBtn.setTitle("ScrollView示例", for: UIControlState.normal)
        tableViewBtn.setTitle("TableView示例", for: UIControlState.normal)
        webViewBtn.setTitle("WKWebView示例", for: UIControlState.normal)
        oldWebViewBtn.setTitle("UIWebView示例", for: UIControlState.normal)
        collectBtn.setTitle("CollectionView示例", for: UIControlState.normal)
        
        view.addSubview(viewBtn)
        view.addSubview(scrollViewBtn)
        view.addSubview(tableViewBtn)
        view.addSubview(webViewBtn)
        view.addSubview(oldWebViewBtn)
        view.addSubview(collectBtn)
        
        let actionSel = #selector(STMenuDemoViewController.didBtnClicked(_:))
        
        viewBtn.addTarget(self, action: actionSel, for: UIControlEvents.touchUpInside)
        scrollViewBtn.addTarget(self, action: actionSel, for: UIControlEvents.touchUpInside)
        tableViewBtn.addTarget(self, action: actionSel, for: UIControlEvents.touchUpInside)
        webViewBtn.addTarget(self, action: actionSel, for: UIControlEvents.touchUpInside)
        oldWebViewBtn.addTarget(self, action: actionSel, for: UIControlEvents.touchUpInside)
        collectBtn.addTarget(self, action: actionSel, for: UIControlEvents.touchUpInside)
        
        self.viewBtn = viewBtn
        self.scrollViewBtn = scrollViewBtn
        self.tableViewBtn = tableViewBtn
        self.webViewBtn = webViewBtn
        self.oldWebViewBtn = oldWebViewBtn
        self.collectionBtn = collectBtn;
    }
    
// MARK: Layout Views
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let btnHeight:CGFloat = 30, btnWidth:CGFloat = 180.0, spanHeight:CGFloat = 20.0;
        let btnX = view.frame.size.width / 2 - btnWidth / 2;
        let midY = view.frame.size.height / 2;
        
        viewBtn?.frame       = CGRect(x: btnX, y: midY - btnHeight * 3 - spanHeight * 2.5, width: btnWidth, height: btnHeight)
        scrollViewBtn?.frame = CGRect(x: btnX, y: midY - btnHeight * 2 - spanHeight * 1.5, width: btnWidth, height: btnHeight)
        tableViewBtn?.frame  = CGRect(x: btnX, y: midY - btnHeight - spanHeight / 2, width: btnWidth, height: btnHeight)
        
        webViewBtn?.frame    = CGRect(x: btnX, y: midY + spanHeight * 0.5, width: btnWidth, height: btnHeight)
        oldWebViewBtn?.frame = CGRect(x: btnX, y: midY + spanHeight * 1.5 + btnHeight, width: btnWidth, height: btnHeight)
        collectionBtn?.frame = CGRect(x: btnX, y: midY + spanHeight * 2.5 + btnHeight * 2, width: btnWidth, height: btnHeight)
    }
    
// MARK: Events
    
    @objc func didBtnClicked(_ button: UIButton){
        if(button == viewBtn) {
            let vc = STViewDemoController()
            navigationController?.pushViewController(vc, animated: true)
        }else if(button == scrollViewBtn) {
            let vc = STScrollViewDemoController()
            navigationController?.pushViewController(vc, animated: true)
        }else if(button == tableViewBtn) {
            let vc = STTableViewDemoController()
            navigationController?.pushViewController(vc, animated: true)
        }else if(button == webViewBtn) {
            let vc = STWKWebViewDemoController()
//            navigationController?.presentViewController(vc, animated: true, completion: nil)
            navigationController?.pushViewController(vc, animated: true)
        }else if(button == oldWebViewBtn) {
            let vc = STUIWebViewDemoController()
            navigationController?.pushViewController(vc, animated: true)
        }else if(button == collectionBtn) {
            let vc = STCollectionViewDemoController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

//
//  ViewController.swift
//  UIScrollViewLesson01
//
//  Created by UrataHiroki on 2021/10/11.
//

import UIKit

class ViewController: UIViewController {
    
    let scrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        scrollView.frame = CGRect(x: view.frame.minX, y: view.frame.minY, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width , height: view.frame.height * 3)
        scrollView.isPagingEnabled = true
        
        view.addSubview(scrollView)
        
        
    }


}


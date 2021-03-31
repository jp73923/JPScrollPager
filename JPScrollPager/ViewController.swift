//
//  ViewController.swift
//  JPScrollPager
//
//  Created by Jay Patel on 31/03/21.
//  Copyright © 2021 Jay Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var paging: UIPageControl!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
//MARK:- UIScrollViewDelegate
extension ViewController:UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        paging.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
    }
}



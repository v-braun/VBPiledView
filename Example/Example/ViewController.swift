//
//  ViewController.swift
//  Example
//
//  Created by Viktor Braun on 02.07.16.
//  Copyright © 2016 dev-things. All rights reserved.
//
import UIKit
import VBPiledView
class ViewController: UIViewController, VBPiledViewDataSource {

    @IBOutlet var piledView: VBPiledView!
    
    private var _subViews = [UIView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.piledView.expandedContentHeightInPercent = 70 // expanded content height -> 70% of screen
        self.piledView.collapsedContentHeightInPercent = 15 // collapsed content heigt of single item -> 15% of screen
        
        _subViews.append(UIImageView(image: UIImage(named: "ant.jpg")))
        _subViews.append(UIImageView(image: UIImage(named: "bigban.jpg")))
        _subViews.append(UIImageView(image: UIImage(named: "leopard.jpg")))
        _subViews.append(UIImageView(image: UIImage(named: "libertystate.jpg")))
        _subViews.append(UIImageView(image: UIImage(named: "Moonrise.jpg")))
        _subViews.append(UIImageView(image: UIImage(named: "photographer.jpg")))
        
        for v in _subViews{
            v.contentMode = UIViewContentMode.scaleAspectFill
            v.clipsToBounds = true
            v.backgroundColor = UIColor.gray
        }
        
        piledView.dataSource = self
    }
    
    func piledView(_ numberOfItemsForPiledView: VBPiledView) -> Int {
        return _subViews.count
    }
    
    func piledView(_ viewForPiledView: VBPiledView, itemAtIndex index: Int) -> UIView {
        return _subViews[index]
    }
}


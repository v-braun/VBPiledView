//
//  ImgWithTextViewController.swift
//  Example
//
//  Created by Viktor Braun on 11.08.16.
//  Copyright © 2016 dev-things. All rights reserved.
//
import UIKit
import VBPiledView
class ImgWithTextViewController: UIViewController, VBPiledViewDataSource {
    
    @IBOutlet var piledView: VBPiledView!
    
    private var _subViews = [UIView]()
    
    func createSampleView(namedImage imgName: String, lblTitle: String) -> UIView{
        
        let img = UIImageView(image: UIImage(named: imgName))
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = UIViewContentMode.ScaleAspectFill
        img.clipsToBounds = true
        img.backgroundColor = UIColor.grayColor()
        
        let v = UIView()
        v.addSubview(img)
        v.addConstraint(NSLayoutConstraint(
            item: img,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: NSLayoutRelation.Equal,
            toItem: v,
            attribute: NSLayoutAttribute.CenterX,
            multiplier: 1.0,
            constant: 0.0))
        
        v.addConstraint(NSLayoutConstraint(
            item: img,
            attribute: NSLayoutAttribute.CenterY,
            relatedBy: NSLayoutRelation.Equal,
            toItem: v,
            attribute: NSLayoutAttribute.CenterY,
            multiplier: 1.0,
            constant: 0.0))
        
        v.addConstraint(NSLayoutConstraint(
            item: img,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: v,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1.0,
            constant: 0.0))
        v.addConstraint(NSLayoutConstraint(
            item: img,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: v,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1.0,
            constant: 0.0))
        
        let lbl = UILabel()
        lbl.text = lblTitle
        lbl.textAlignment = NSTextAlignment.Center
        lbl.textColor = UIColor.whiteColor()
        lbl.font = UIFont.systemFontOfSize(40)
        
        lbl.translatesAutoresizingMaskIntoConstraints = false
        v.addSubview(lbl)
        v.addConstraint(NSLayoutConstraint(
            item: lbl,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: NSLayoutRelation.Equal,
            toItem: v,
            attribute: NSLayoutAttribute.CenterX,
            multiplier: 1.0,
            constant: 0.0))
        
        v.addConstraint(NSLayoutConstraint(
            item: lbl,
            attribute: NSLayoutAttribute.CenterY,
            relatedBy: NSLayoutRelation.Equal,
            toItem: v,
            attribute: NSLayoutAttribute.CenterY,
            multiplier: 1.0,
            constant: 0.0))
        
        v.addConstraint(NSLayoutConstraint(
            item: lbl,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: v,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1.0,
            constant: 0.0))
        v.addConstraint(NSLayoutConstraint(
            item: lbl,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: v,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1.0,
            constant: 0.0))
        
        

//        v.bringSubviewToFront(lbl)
        
        return v;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _subViews.append(createSampleView(namedImage: "ant.jpg", lblTitle: "ant"))
        _subViews.append(createSampleView(namedImage: "bigban.jpg", lblTitle: "bigban"))
        _subViews.append(createSampleView(namedImage: "leopard.jpg", lblTitle: "leopard"))
        _subViews.append(createSampleView(namedImage: "libertystate.jpg", lblTitle: "liberty"))
        _subViews.append(createSampleView(namedImage: "Moonrise.jpg", lblTitle: "moonrise"))
        _subViews.append(createSampleView(namedImage: "photographer.jpg", lblTitle: "photographer"))
        
//        for v in _subViews{
//            v.contentMode = UIViewContentMode.ScaleAspectFill
//            v.clipsToBounds = true
//            v.backgroundColor = UIColor.grayColor()
//        }
        
        piledView.dataSource = self
    }
    
    func piledView(numberOfItemsForPiledView: VBPiledView) -> Int {
        return _subViews.count
    }
    
    func piledView(viewForPiledView: VBPiledView, itemAtIndex index: Int) -> UIView {
        return _subViews[index]
    }
}
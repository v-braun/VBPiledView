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
        img.contentMode = UIViewContentMode.scaleAspectFill
        img.clipsToBounds = true
        img.backgroundColor = UIColor.gray
        
        let v = UIView()
        v.addSubview(img)
        v.addConstraint(NSLayoutConstraint(
            item: img,
            attribute: NSLayoutAttribute.centerX,
            relatedBy: NSLayoutRelation.equal,
            toItem: v,
            attribute: NSLayoutAttribute.centerX,
            multiplier: 1.0,
            constant: 0.0))
        
        v.addConstraint(NSLayoutConstraint(
            item: img,
            attribute: NSLayoutAttribute.centerY,
            relatedBy: NSLayoutRelation.equal,
            toItem: v,
            attribute: NSLayoutAttribute.centerY,
            multiplier: 1.0,
            constant: 0.0))
        
        v.addConstraint(NSLayoutConstraint(
            item: img,
            attribute: NSLayoutAttribute.width,
            relatedBy: NSLayoutRelation.equal,
            toItem: v,
            attribute: NSLayoutAttribute.width,
            multiplier: 1.0,
            constant: 0.0))
        v.addConstraint(NSLayoutConstraint(
            item: img,
            attribute: NSLayoutAttribute.height,
            relatedBy: NSLayoutRelation.equal,
            toItem: v,
            attribute: NSLayoutAttribute.height,
            multiplier: 1.0,
            constant: 0.0))
        
        let lbl = UILabel()
        lbl.text = lblTitle
        lbl.textAlignment = NSTextAlignment.center
        lbl.textColor = UIColor.white
        lbl.font = UIFont.systemFont(ofSize: 40)
        
        lbl.translatesAutoresizingMaskIntoConstraints = false
        v.addSubview(lbl)
        v.addConstraint(NSLayoutConstraint(
            item: lbl,
            attribute: NSLayoutAttribute.centerX,
            relatedBy: NSLayoutRelation.equal,
            toItem: v,
            attribute: NSLayoutAttribute.centerX,
            multiplier: 1.0,
            constant: 0.0))
        
        v.addConstraint(NSLayoutConstraint(
            item: lbl,
            attribute: NSLayoutAttribute.centerY,
            relatedBy: NSLayoutRelation.equal,
            toItem: v,
            attribute: NSLayoutAttribute.centerY,
            multiplier: 1.0,
            constant: 0.0))
        
        v.addConstraint(NSLayoutConstraint(
            item: lbl,
            attribute: NSLayoutAttribute.width,
            relatedBy: NSLayoutRelation.equal,
            toItem: v,
            attribute: NSLayoutAttribute.width,
            multiplier: 1.0,
            constant: 0.0))
        v.addConstraint(NSLayoutConstraint(
            item: lbl,
            attribute: NSLayoutAttribute.height,
            relatedBy: NSLayoutRelation.equal,
            toItem: v,
            attribute: NSLayoutAttribute.height,
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
    
    func piledView(_ numberOfItemsForPiledView: VBPiledView) -> Int {
        return _subViews.count
    }
    
    func piledView(_ viewForPiledView: VBPiledView, itemAtIndex index: Int) -> UIView {
        return _subViews[index]
    }
}

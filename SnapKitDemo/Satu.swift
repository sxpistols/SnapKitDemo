//
//  Satu.swift
//  SnapKitDemo
//
//  Created by ariefdolants on 20/09/18.
//  Copyright © 2018 Appcoda. All rights reserved.
//

import UIKit
import SnapKit
import UIGradient


class Satu: UIViewController {

    let box = UIView()
    let box1 = UIView()
    let box2 = UIView()
    let box3 = UIView()
    let box4 = UIView()
    let box5 = UIView()
    let box6 = UIView()
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    
    let timeProgressHeightConstant = 100.0
    let kiri = 20
    let kanan = -20
    
    let c1 = UIColor(red:0.31, green:0.29, blue:0.55, alpha:1.0)
    let c2 = UIColor(red:0.36, green:0.34, blue:0.61, alpha:1.0)
    let c3 = UIColor(red:0.45, green:0.30, blue:0.84, alpha:1.0)
    let c4 = UIColor(red:0.38, green:0.24, blue:0.73, alpha:1.0)
    

    
    
    //var sections: CGFloat
    
    override func viewDidLoad() {
        
        var sections = CGFloat()
        var ypost = Int()
        var space = Int()
        
        ypost = 70
        
        label2.text = "Label2"
        label3.text = "Label3"
        
        
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red:0.25, green:0.24, blue:0.51, alpha:1.0)
        
        
        
        
        space = Int(self.label1.bounds.size.height)
        
        ypost = ypost + 30
        
        //self.view.backgroundColor = UIColor.fromGradient(GradientLayer.victoriaPurple, frame: view.frame)
        
        
        
        
//        self.view.addSubview(box)
//
//        self.box.backgroundColor = UIColor.fromGradient(GradientLayer.victoriaPurple, frame: CGRect(x: 0, y: 0, width: 500, height: 1200))
//
//        self.box.layer.cornerRadius = 5.0
//        self.box.layer.masksToBounds = true
//        self.box.layer.shadowColor = UIColor.black.cgColor
//        self.box.layer.shadowOffset = CGSize(width: 0, height: 1.0)
//        self.box.layer.shadowOpacity = 0.2
//        self.box.layer.shadowRadius = 3.0
//
//
//        //self.box.backgroundColor = UIColor(red:0.25, green:0.24, blue:0.51, alpha:1.0)
//        box.snp.makeConstraints { (make) -> Void in
//            make.top.equalTo(self.view).offset(200)
//            make.left.equalTo(self.view).offset(0)
//            make.right.equalTo(self.view).offset(0)
//            //make.height.equalTo(self.view).offset(300)
//            make.bottom.equalTo(self.view).offset(0)
//
//        }
        
        self.view.addSubview(box)
        
        //self.box.backgroundColor = UIColor.fromGradient(GradientLayer.oceanBlue, frame: CGRect(x: 0, y: 0, width: 500, height: 300))
        self.box.backgroundColor = UIColor.fromGradientWithDirection(.topLeftToBottomRight, frame: CGRect(x: 0, y: 0, width: 600, height: 500), colors: [c3, c4])
        
        self.box.layer.cornerRadius = 0.0
        self.box.layer.masksToBounds = true
        self.box.layer.shadowColor = UIColor.black.cgColor
        self.box.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        self.box.layer.shadowOpacity = 0.2
        self.box.layer.shadowRadius = 3.0
        
        
        
        sections = (self.view.frame.height - label1.font.pointSize ) / 6
        print("self.view.frame.height  = \(self.view.frame.height) : \(sections) : ypost = \(ypost) : space \(space) : label1.frame.height \(self.label1.frame.height) : label1.bounds.size.height = \(self.label1.bounds.size.height) : label1.font.pointSize = \(label1.font.pointSize)")

        box.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.view).offset(0)
            make.left.equalTo(self.view).offset(0)
            make.right.equalTo(self.view).offset(0)
            make.height.equalTo(sections)
            
        }
        
        
        
        
        
        //self.box1.frame = CGRect(x: 0, y: 0, width: self.box1.frame.width, height: 20)
        //box1.backgroundColor = UIColor.fromGradient(GradientLayer.sanguine, frame: box1.frame)
        
        
        self.view.addSubview(label1)
        label1.text = "Chanthel Health"
        label1.textColor = .white
        label1.textAlignment = NSTextAlignment.left
        label1.font = UIFont.boldSystemFont(ofSize: 16.0)
        //label1.font = label1.font.withSize(14.0)
        
        label1.snp.makeConstraints { (make) -> Void in
            
            make.top.equalTo(self.view).offset(ypost)
            make.left.equalTo(self.view).offset(kiri)
            make.right.equalTo(self.view).offset(-150)
        }
        
        self.view.addSubview(label2)
        label2.text = "Account"
        label2.textColor = .white
        label2.textAlignment = NSTextAlignment.right
        label2.font = UIFont.boldSystemFont(ofSize: 16.0)
        //label2.font.withSize(14.0)
        
        label2.snp.makeConstraints { (make) -> Void in
            
            make.top.equalTo(self.view).offset(ypost)
            make.left.equalTo(self.view).offset(150)
            make.right.equalTo(self.view).offset(kanan)
            
        }
        
        
        
        
        
        
        self.view.addSubview(box2)
        box2.layer.cornerRadius = 5.0
        //box2.backgroundColor = UIColor(red:0.39, green:0.30, blue:0.63, alpha:1.0)
        self.box2.backgroundColor = UIColor.fromGradientWithDirection(.leftToRight, frame: CGRect(x: 0, y: 110, width: 400, height: 100), colors: [c1, c2])
        box2.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.view).offset(190)
            make.left.equalTo(self.view).offset(kiri)
            
            //make.height.equalTo(timeProgressHeightConstant)
            make.right.equalTo(self.view).offset(kanan)
            make.height.equalTo(timeProgressHeightConstant)

        }
        
        self.view.addSubview(box3)
        
        box3.layer.cornerRadius = 5.0
        //box3.backgroundColor = UIColor(red:0.39, green:0.30, blue:0.63, alpha:1.0)
        self.box3.backgroundColor = UIColor.fromGradientWithDirection(.leftToRight, frame: CGRect(x: 0, y: 110, width: 400, height: 100), colors: [c1, c2])
        box3.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.view).offset(310)
            make.left.equalTo(self.view).offset(kiri)
            
            //make.height.equalTo(timeProgressHeightConstant)
            make.right.equalTo(self.view).offset(kanan)
            make.height.equalTo(timeProgressHeightConstant)
            
        }

        
        self.view.addSubview(box4)
        box4.layer.cornerRadius = 5.0
        self.box4.backgroundColor = UIColor.fromGradientWithDirection(.leftToRight, frame: CGRect(x: 0, y: 110, width: 400, height: 100), colors: [c1, c2])
        //box4.backgroundColor = UIColor(red:0.39, green:0.30, blue:0.63, alpha:1.0)
        box4.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.view).offset(310 + 120)
            make.left.equalTo(self.view).offset(kiri)
            
            //make.height.equalTo(timeProgressHeightConstant)
            make.right.equalTo(self.view).offset(kanan)
            make.height.equalTo(timeProgressHeightConstant)
            
        }
        
        self.view.addSubview(box5)
        box5.layer.cornerRadius = 5.0
        self.box5.backgroundColor = UIColor.fromGradientWithDirection(.leftToRight, frame: CGRect(x: 0, y: 110, width: 400, height: 100), colors: [c1, c2])
        //box5.backgroundColor = UIColor(red:0.39, green:0.30, blue:0.63, alpha:1.0)
        box5.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.view).offset(310 + 240)
            make.left.equalTo(self.view).offset(kiri)
            
            //make.height.equalTo(timeProgressHeightConstant)
            make.right.equalTo(self.view).offset(kanan)
            make.height.equalTo(timeProgressHeightConstant)
            
        }
        
        self.view.addSubview(box6)
        box6.layer.cornerRadius = 5.0
        //box6.backgroundColor = UIColor(red:0.39, green:0.30, blue:0.63, alpha:1.0)
        self.box6.backgroundColor = UIColor.fromGradientWithDirection(.leftToRight, frame: CGRect(x: 0, y: 110, width: 400, height: 100), colors: [c1, c2])
        box6.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.view).offset(310 + 360)
            make.left.equalTo(self.view).offset(kiri)
            
            //make.height.equalTo(timeProgressHeightConstant)
            make.right.equalTo(self.view).offset(kanan)
            make.height.equalTo(timeProgressHeightConstant)
            
        }
        
        
//
//        self.view.addSubview(box3)
//        box3.backgroundColor = UIColor.black
//        box3.snp.makeConstraints { (make) -> Void in
//            make.top.equalTo(self.view).offset(290)
//            make.left.equalTo(self.view).offset(0)
//            make.height.equalTo(timeProgressHeightConstant)
//            make.right.equalTo(self.view).offset(0)
//
//        }
        
//        self.view.addSubview(box4)
//        box4.backgroundColor = UIColor.red
//        box4.snp.makeConstraints { (make) -> Void in
//            make.top.equalTo(self.view).offset(410)
//            make.left.equalTo(self.view).offset(0)
//            make.height.equalTo(timeProgressHeightConstant)
//            make.right.equalTo(self.view).offset(0)
//
//        }
        
        
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension CALayer {
    public func configureGradientBackground(_ colors:CGColor...){
        
        let gradient = CAGradientLayer()
        
        let maxWidth = max(self.bounds.size.height,self.bounds.size.width)
        let squareFrame = CGRect(origin: self.bounds.origin, size: CGSize(width: maxWidth, height: maxWidth))
        gradient.frame = squareFrame
        
        gradient.colors = colors
        
        self.insertSublayer(gradient, at: 0)
    }
}

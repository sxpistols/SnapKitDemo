//
//  DView.swift
//  SnapKitDemo
//
//  Created by ariefdolants on 21/09/18.
//  Copyright © 2018 Appcoda. All rights reserved.
//

import UIKit
import SnapKit
import UIGradient


class DView: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let box = UIView()
    var sections = CGFloat()
    
    let c1 = UIColor(red:0.31, green:0.29, blue:0.55, alpha:1.0)
    let c2 = UIColor(red:0.36, green:0.34, blue:0.61, alpha:1.0)
    let c3 = UIColor(red:0.45, green:0.30, blue:0.84, alpha:1.0)
    let c4 = UIColor(red:0.38, green:0.24, blue:0.73, alpha:1.0)
    let c5 = UIColor(red:0.94, green:0.94, blue:0.94, alpha:1.0) //white 90% gray 10%
    let c6 = UIColor(red:0.95, green:0.93, blue:0.93, alpha:1.0) //white 87% gray 13%
    let c8 =  UIColor(red:0.84, green:0.83, blue:0.82, alpha:1.0) //white 60% gray 40%
    
    let c0 = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0) //white 100%
    
    var ypost = Int()
    let cellSpacingHeight: CGFloat = 2
    
    
    
    var mtv: UITableView = {
        let tableView = UITableView()
        tableView.separatorColor = UIColor.clear
        tableView.tableFooterView = UIView()
        return tableView
    }()
    
    var arrayTable: [String] = ["Book","Cassete", "CD", "DVD", "TV", "Computer", "Bicycle"]
    var cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.fromGradientWithDirection(.topLeftToBottomRight, frame: CGRect(x: 0, y: 0, width: 1600, height: 1000), colors: [c0, c8])
        ypost = 70
        
        self.view.addSubview(box)
        
        //self.box.backgroundColor = UIColor.fromGradient(GradientLayer.oceanBlue, frame: CGRect(x: 0, y: 0, width: 500, height: 300))
        self.box.backgroundColor = UIColor.fromGradientWithDirection(.topLeftToBottomRight, frame: CGRect(x: 0, y: 0, width: 600, height: 500), colors: [c3, c4])
        
        self.box.layer.cornerRadius = 0.0
        self.box.layer.masksToBounds = true
        self.box.layer.shadowColor = UIColor.black.cgColor
        self.box.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        self.box.layer.shadowOpacity = 0.2
        self.box.layer.shadowRadius = 3.0
        
        sections = self.view.frame.height / 6

        
        box.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.view).offset(0)
            make.left.equalTo(self.view).offset(0)
            make.right.equalTo(self.view).offset(0)
            make.height.equalTo(120)
            
        }
        
        
        
        mtv.frame = view.frame
        mtv.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        mtv.delegate = self
        mtv.dataSource = self
        mtv.rowHeight = sections
        mtv.backgroundColor = UIColor.clear
        
        
        
        self.view.addSubview(mtv)
        
        mtv.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.view).offset(160)
            make.left.equalTo(self.view).offset(10)
            make.right.equalTo(self.view).offset(-10)
            make.bottom.equalTo(self.view).offset(0)
            
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.arrayTable.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // Set the spacing between sections
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }
    
    // Make the background color show through
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        //you can create your own custom view here
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let view:UIView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.size.width, height: 10))
        view.backgroundColor = .clear
        
        return view
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mtv.dequeueReusableCell(withIdentifier: cellID)
        // note that indexPath.section is used rather than indexPath.row
        cell!.textLabel?.text = self.arrayTable[indexPath.section]
        
        // add border and color
        cell!.backgroundColor = c8
        cell!.layer.borderColor = UIColor.clear.cgColor
        cell!.layer.borderWidth = 0
        cell!.layer.cornerRadius = 8
        cell!.clipsToBounds = true
        
        
        return cell!
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // note that indexPath.section is used rather than indexPath.row
        print("You tapped cell number \(indexPath.section).")
    }
    

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

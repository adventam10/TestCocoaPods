//
//  VennDiagramViewController.swift
//  TestPod
//
//  Created by am10 on 2019/04/21.
//  Copyright © 2019 am10. All rights reserved.
//

import UIKit
import AMVennDiagramView

class VennDiagramViewController: UIViewController {

    @IBOutlet weak var vView: AMVennDiagramView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        vView.setupVennDiagram(value1: 1000, value2: 900, commonValue: 100)
        vView.dataSource = self
    }
}

extension VennDiagramViewController: AMVennDiagramViewDataSource {
    func vennDiagramView(_ vennDiagramView:AMVennDiagramView, fillColorForSection section: Int) -> UIColor {
        let r = CGFloat(arc4random_uniform(255) + 1)/255.0
        let g = CGFloat(arc4random_uniform(255) + 1)/255.0
        let b = CGFloat(arc4random_uniform(255) + 1)/255.0
        
        let color = UIColor(red: r, green: g, blue: b, alpha: 0.5)
        return color
    }
    
    func vennDiagramView(_ vennDiagramView:AMVennDiagramView, strokeColorForSection section: Int) -> UIColor {
        let r = CGFloat(arc4random_uniform(255) + 1)/255.0
        let g = CGFloat(arc4random_uniform(255) + 1)/255.0
        let b = CGFloat(arc4random_uniform(255) + 1)/255.0
        
        let color = UIColor(red: r, green: g, blue: b, alpha: 1.0)
        return color
    }
    
    func vennDiagramView(_ vennDiagramView:AMVennDiagramView, titleForSection section: Int, value: CGFloat) -> String {
        let title = section == 0 ? "A" : "B"
        let valueText = NSString(format: "%.0f", value) as String
        return title + "\n" + valueText
    }
    
    func titleForCommonArea(in vennDiagramView:AMVennDiagramView, value: CGFloat) -> String {
        let valueText = NSString(format: "%.0f", value) as String
        return "Common\n" + valueText
    }
    
    func vennDiagramView(_ vennDiagramView:AMVennDiagramView, textColorForSection section: Int) -> UIColor {
        let r = CGFloat(arc4random_uniform(255) + 1)/255.0
        let g = CGFloat(arc4random_uniform(255) + 1)/255.0
        let b = CGFloat(arc4random_uniform(255) + 1)/255.0
        
        let color = UIColor(red: r, green: g, blue: b, alpha: 1.0)
        return color
    }
    
    func textColorForCommonArea(in vennDiagramView:AMVennDiagramView) -> UIColor {
        let r = CGFloat(arc4random_uniform(255) + 1)/255.0
        let g = CGFloat(arc4random_uniform(255) + 1)/255.0
        let b = CGFloat(arc4random_uniform(255) + 1)/255.0
        
        let color = UIColor(red: r, green: g, blue: b, alpha: 1.0)
        return color
    }
    
    func vennDiagramView(_ vennDiagramView:AMVennDiagramView, textFontForSection section: Int) -> UIFont {
        return UIFont.systemFont(ofSize: 17)
    }
    
    func textFontForCommonArea(in vennDiagramView:AMVennDiagramView) -> UIFont {
        return UIFont.systemFont(ofSize: 17)
    }
}

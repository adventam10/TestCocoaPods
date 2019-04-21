//
//  JpnMapViewController.swift
//  TestPod
//
//  Created by am10 on 2019/04/21.
//  Copyright © 2019 am10. All rights reserved.
//

import UIKit
import AMJpnMap

class JpnMapViewController: UIViewController {

    @IBOutlet weak var jView: AMJpnMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        jView.delegate = self
    }
}

extension JpnMapViewController: AMJpnMapViewDelegate {
    func jpnMapView(_ jpnMapView: AMJpnMapView, didSelectAtRegion region: AMJMRegion) {
        jpnMapView.setFillColor(color: UIColor.red, region: region)
        jpnMapView.setStrokeColor(color: UIColor.red, region: region)
    }
    
    func jpnMapView(_ jpnMapView: AMJpnMapView, didDeselectAtRegion region: AMJMRegion) {
        jpnMapView.setFillColor(color: UIColor.green, region: region)
        jpnMapView.setStrokeColor(color: UIColor.green, region: region)
    }
}

//
//  ColorPickerViewController.swift
//  TestPod
//
//  Created by am10 on 2019/04/21.
//  Copyright © 2019 am10. All rights reserved.
//

import UIKit
import AMColorPicker

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedButton(_ sender: UIButton) {
        let vc = AMColorPickerViewController()
        vc.selectedColor = colorView.backgroundColor!
        vc.delegate = self
        present(vc, animated: true, completion: nil)
    }
}

extension ColorPickerViewController: AMColorPickerDelegate {
    func colorPicker(_ colorPicker: AMColorPicker, didSelect color: UIColor) {
        colorView.backgroundColor = color
    }
}

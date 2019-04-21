//
//  BurnAnimationViewController.swift
//  TestPod
//
//  Created by am10 on 2019/04/21.
//  Copyright © 2019 am10. All rights reserved.
//

import UIKit
import AMBurnAnimation

class BurnAnimationViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction private func tappedButton(_ sender: UIButton) {
        textView.isHidden = false
        textView.burnAnimation(duration: 0.5) { [unowned self] in
            self.textView.isHidden = true
        }
    }
}

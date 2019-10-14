//
//  CalendarViewController.swift
//  TestPod
//
//  Created by am10 on 2019/04/21.
//  Copyright © 2019 am10. All rights reserved.
//

import UIKit
import AMCalendar

class CalendarViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var containerView: UIView!
    private let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        AMCalendar.setCalendar(onView: containerView,
                               parentViewController: self,
                               selectedDate: Date(),
                               delegate: self)
        dateFormatter.dateFormat = "yyyy/MM/dd"
    }
}

extension CalendarViewController: AMCalendarDelegate {
    func calendar(_ calendar: AMCalendar, didSelectDate date: Date?) {
        label.text = dateFormatter.string(from: date!)
    }
}

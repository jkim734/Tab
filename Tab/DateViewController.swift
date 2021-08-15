//
//  ViewController.swift
//  DatePicker
//
//  Created by Kim Jae Hyeon on 2021/08/12.
//

import UIKit

class DateViewController: UIViewController {
    let timeSelector: Selector = #selector(DateViewController.updateTime)
    let interval = 1.0
    var count = 0
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblPickerTime.text =
            "선택시간: "+formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime(){
        lblCurrentTime.text = String(count)
        count = count + 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval:interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }


}


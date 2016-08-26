//
//  ChooseBirthdayViewController.swift
//  BabyMoment
//
//  Created by Xueliang Zhu on 8/25/16.
//  Copyright © 2016 kotlinchina. All rights reserved.
//

import UIKit

class ChooseBirthdayViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.hidden = true
    }
    
    @IBAction func chooseDate(sender: AnyObject) {
        setBirthday(datePicker.date)
        showNextPage()
    }
    
    private func showNextPage() {
        let inputNameVC =
            UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("InputNameViewController") as! InputNameViewController
        navigationController?.pushViewController(inputNameVC, animated: true)
    }
    
    private func setBirthday(date: NSDate) {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setObject(formatter.stringFromDate(datePicker.date), forKey: "Birthday")
        userDefaults.synchronize()
    }
}

//
//  ViewController.swift
//  CountMoney
//
//  Created by 王宜婕 on 2024/9/2.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countryMoney: UITextField!
    @IBOutlet weak var totalMoney: UITextField!
    @IBOutlet weak var totalPeople: UITextField!
    @IBOutlet weak var fee: UITextField!
    
    
    @IBOutlet weak var count_country: UILabel!
    @IBOutlet weak var count_totalMoney: UILabel!
    @IBOutlet weak var everyMoney: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func countMoney(_ sender: Any) {
        if let totalMoney = Double(totalMoney.text!),
           let totalPeople = Double(totalPeople.text!),
           let fee = Double(fee.text!){
            let totalcountryMoney = totalMoney * (1 + fee / 100)
            let total = totalcountryMoney * Double(countryMoney.text!)!
            let every = total / totalPeople
            count_country.text = String(format: "%.2f",totalcountryMoney)
            count_totalMoney.text = String(format: "%.2f",total)
            everyMoney.text = String(format: "%.2f",every)
            
            
        }else{
            let controller = UIAlertController(title: "資料不完整", message: "再檢查一下吧", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default)
            controller.addAction(okAction)
            present(controller, animated: true)
        }
    }
    
    @IBAction func clear(_ sender: Any) {
        countryMoney.text = ""
        totalMoney.text = ""
        totalPeople.text = ""
        fee.text = ""
        count_country.text = "null"
        count_totalMoney.text = "null"
        everyMoney.text = "null"
    }
    @IBAction func fee0(_ sender: Any) {
        fee.text = "0"
    }
    @IBAction func fee5(_ sender: Any) {
        fee.text = "5"
    }
    
    @IBAction func fee10(_ sender: Any) {
        fee.text = "10"
    }
}

#Preview {
    UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
}


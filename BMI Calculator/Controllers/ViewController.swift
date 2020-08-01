//
//  ViewController.swift
//  BMI Calculator
//


import UIKit
var height:Float=1
var weight:Float=1
var bmi:Float=0
class ViewController: UIViewController {
    @IBOutlet weak var htext: UILabel!
    @IBOutlet weak var wtext: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        htext.text="1.5"
        wtext.text="100"
        height=Float((htext.text)!)!
        weight=Float((wtext.text)!)!
        htext.text="1.5m"
               wtext.text="100Kg"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        bmi=weight/pow(height, 2)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        
    }
    @IBAction func heightAdjusted(_ sender: UISlider) {
        height=Float(String(format: "%.2f", sender.value))!
        htext.text=String("\(height)m")
        
    }
    
    @IBAction func weightAdjusted(_ sender: UISlider) {
        weight=Float(String(format: "%.1f", sender.value))!
        wtext.text=String("\(weight)Kg")
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="goToResult"
        {
            let goingTo=segue.destination as! ResultViewController
            goingTo.bmiVal=String(format: "%.2f", bmi)
        }
    }
}


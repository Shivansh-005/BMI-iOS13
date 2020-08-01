//
//  ResultViewController.swift
//  BMI Calculator
// 
//

import UIKit

class ResultViewController: UIViewController {
    var bmiVal:String="0.0"
    @IBOutlet weak var resultBanner: UILabel!
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToMain", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultBanner.text=bmiVal
        if Float(bmiVal)!<=25 && Float(bmiVal)!>=18.5
        {
            resultText.text="Your BMI is normal"
            view.backgroundColor=#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }
        else if Float(bmiVal)!<18.5
        {
            resultText.text="Eat more Snacks!"
            view.backgroundColor=#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        }
        else
        {
            resultText.text="Your need to manage your BMI"
            view.backgroundColor=#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
    }
    @IBOutlet weak var resultText: UILabel!
}


/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */



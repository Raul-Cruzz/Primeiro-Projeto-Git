//
//  ThirdViewController.swift
//  MeuPrimeiroProjeto
//
//  Created by Admin on 22/09/21.
//

import UIKit

class ThirdViewController: UIViewController {

    
    
    @IBOutlet weak var fontSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var label: UILabel!
    //var receivedValue: String!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        //print("receivedValue" => \(receivedValue)") - para teste!
        //label.text = receivedValue
        // Do any additional setup after loading the view.
    }
    
    @IBAction func fontSize(_ sender: Any) {
        label.font = UIFont(name: "helvetica", size: CGFloat(fontSlider.value))
    }
    
    @IBAction func alphaLabel(_ sender: Any) {
        label.alpha = CGFloat(alphaSlider.value)
    }
}


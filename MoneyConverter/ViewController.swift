//
//  ViewController.swift
//  MoneyConverter
//
//  Created by Дмитрий on 17.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputPrice: UITextField!
    @IBOutlet weak var labelUsd: UILabel!
    @IBOutlet weak var labelRub: UILabel!
    
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 3000
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    
    
    var price: Float = 0
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        guard let price = self.price else {return}
//        inputPrice.text = "\(price)"
//
//    }
    
    
    
    @IBAction func sliderChanger(_ sender: UISlider) {
        price = Float(inputPrice.text!)!
        
        let valueUsd = Float(sender.value)
        labelUsd.text = "\(valueUsd) USD"
        
        let valueRub = Float(sender.value * Float(price))
        labelRub.text = "\(valueRub) RUB"
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}



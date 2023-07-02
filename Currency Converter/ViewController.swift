//
//  ViewController.swift
//  Currency Converter
//
//  Created by Owais Quadri on 2023-07-02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var endCurrency: UISegmentedControl!
    @IBOutlet weak var conversionRateInput: UITextField!
    @IBOutlet weak var toBeConvertedInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func convertButtonTouchUpInside(_ sender: Any) {
//        get values from text fields
        let rate = Double(conversionRateInput.text!) ?? 0
        let amountToBeConverted = Double(toBeConvertedInput.text!) ?? 0
        let result = rate * amountToBeConverted
        resultLabel.text = result.formatted(.currency(code: "USD"))+" \(endCurrency.selectedSegmentIndex == 0 ? "CAD" : "USD")"
    }
    

}


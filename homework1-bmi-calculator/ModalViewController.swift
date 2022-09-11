//
//  ModalViewController.swift
//  homework1-bmi-calculator
//
//  Created by Samet Koyuncu on 4.09.2022.
//

import UIKit

protocol ModalViewControllerDelegate {
    func updateUser(data: UserModel)
}

class ModalViewController: UIViewController {
    
    var delegate: ModalViewControllerDelegate?
    
    // color dictionary
    var colors = [0: UIColor.blue, 1: UIColor.purple, 2: UIColor.systemPink, 3: UIColor.orange]
    
    // outlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var themeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        saveButton.layer.cornerRadius = saveButton.frame.height / 2
        cancelButton.layer.cornerRadius = cancelButton.frame.height / 2
        
    }
    
    // slider (observer) methods
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "Boy: " + String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "Kilo: " + String(format: "%.1f", sender.value) + "kg"
    }
    
    // button action methods
    @IBAction func cancelButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        // name is required
        guard let name = nameTextField.text, name != "" else {
            nameTextField.backgroundColor = UIColor(red: 1.00, green: 0.00, blue: 0.00, alpha: 0.05)
            nameTextField.placeholder = "Zorunlu alan"
                return
            }
        
        let height = heightSlider.value
        let weight = weightSlider.value
        let theme = colors[(themeSegmentedControl.selectedSegmentIndex)] ?? UIColor.blue
        // create user model
        let userData = UserModel(name: name, height: height, weight: weight, theme: theme)

        delegate?.updateUser(data: userData)
        dismiss(animated: true, completion: nil)
    }
    
}

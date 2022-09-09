//
//  ViewController.swift
//  homework1-bmi-calculator
//
//  Created by Samet Koyuncu on 4.09.2022.
//

import UIKit

class ViewController: UIViewController {
    // outlets
    @IBOutlet weak var avatarView: UIView!
    @IBOutlet weak var avatarLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var scoreValueLabel: UILabel!
    @IBOutlet weak var scoreCategoryLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var welcomeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calculateButton.layer.cornerRadius = 30
        avatarView.layer.cornerRadius = 50
        welcomeView.alpha = 0.9
    }
    
    @IBAction func updateDataPressed(_ sender: UIButton) {
        welcomeView.isHidden = true
        performSegue(withIdentifier: "goToModal", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToModal" {
            let destinationVC = segue.destination as! ModalViewController
            destinationVC.updateUserData = {[unowned self] data in
                // veriables
                let name = data.name
                let height = data.height
                let weight = data.weight
                let theme = data.theme
                
                // calculate score
                let score = weight / (height * height)
                
                // get score category
                let scoreCategory = getCategoryData(for: score)
                
                // update ui
                if let letter = name.first {
                    self.avatarLabel.text = String(letter)
                }
                
                self.avatarView.backgroundColor = theme
                self.nameLabel.text = name
                
                self.heightValueLabel.text = String(format: "%.2f", height) + "m"
                self.weightValueLabel.text = String(format: "%.1f", weight) + "kg"
                
                self.scoreValueLabel.text = String(format: "%.1f", score)
                self.scoreCategoryLabel.text = scoreCategory.text
                self.scoreCategoryLabel.textColor = scoreCategory.color
                
                self.calculateButton.backgroundColor = theme
            }
        }
    }

}

struct Category {
    var text:String
    var color: UIColor
}

func getCategoryData(for score: Float) -> Category {
    switch score {
    case ..<18.5:
        return Category(text: "Düşük", color: UIColor.blue)
    case ..<24.9:
        return Category(text: "Normal", color: UIColor.systemGreen)
    default:
        return Category(text: "Yüksek", color: UIColor.red)
    }
}


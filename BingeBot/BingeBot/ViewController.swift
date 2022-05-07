//
//  ViewController.swift
//  BingeBot
//
//  Created by apple on 2022/05/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var randomShowLabel: UILabel!
    @IBOutlet weak var bingabotSpokenLabel: UILabel!
    
    @IBOutlet weak var addShowTextField: UITextField!
    
    @IBOutlet weak var addShowBtn: UIButton!
    @IBOutlet weak var randomShowStackView: UIStackView!
    
    @IBOutlet weak var addShowStackView: UIStackView!
    
    @IBOutlet weak var showStackView: UIStackView!
    
    
    var shows:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        showStackView.isHidden = true
        randomShowStackView.isHidden = true
    }
    func updateShowLabel(){
        showLabel.text = shows.joined(separator: ",")
    }
    
    @IBAction func addShowBtnWasPressed(_ sender: Any) {
        guard let showName = addShowTextField.text else { return}
        shows.append(showName)
        print(shows)
        if showName != "" {
        updateShowLabel()
        addShowTextField.text = ""
        showStackView.isHidden = false
            if shows.count > 1{
               randomShowStackView.isHidden = false
               bingabotSpokenLabel.isHidden = true
                randomShowLabel.isHidden = true
            }
        }
    }
    
    @IBAction func randomShowBtnWasPressed(_ sender: Any) {
    
    randomShowLabel.text = shows.randomElement()
    randomShowLabel.isHidden = false
    }
}


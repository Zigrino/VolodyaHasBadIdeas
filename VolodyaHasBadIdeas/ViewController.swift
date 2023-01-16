//
//  ViewController.swift
//  VolodyaHasBadIdeas
//
//  Created by Yulian Itskov-Curto on 1/16/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var pullDown: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setPullDownButton()
        // Do any additional setup after loading the view.
    }
    func editLabel(text: String){
        myLabel.text = text
    }
    func setPullDownButton(){
        let optionClosure = {(action : UIAction) in
            self.editLabel(text: action.title)
        }

        pullDown.menu = UIMenu(children: [UIAction(title: "Option 1", state: .on, handler: optionClosure), UIAction(title: "Option 2", handler: optionClosure)])
        pullDown.showsMenuAsPrimaryAction = true
        pullDown.changesSelectionAsPrimaryAction = true
    }


}


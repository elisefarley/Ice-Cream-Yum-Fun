//
//  ThirdViewController.swift
//  Ice Cream Yum Fun
//
//  Created by Elise Farley on 12/9/19.
//  Copyright © 2019 Elise Farley. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var iceCream = IceCream()
    @IBOutlet weak var creationTitle: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //put away keyboard when tap on view controller
    @IBAction func onViewTapped(_ sender: Any) {
        view.endEditing(true)
    }
    
    //cant continue until user enters a name
    @IBAction func finalProductButtonTapped(_ sender: Any) {
        if creationTitle.text?.count != 0
        {
            iceCream.title = creationTitle.text!
            performSegue(withIdentifier: "ThirdToFourth", sender: Any?.self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           let dvc = segue.destination as! FourthViewController
           dvc.iceCream = self.iceCream
       }
}

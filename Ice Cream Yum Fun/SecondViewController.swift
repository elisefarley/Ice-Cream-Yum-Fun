//
//  SecondViewController.swift
//  Ice Cream Yum Fun
//
//  Created by Elise Farley on 12/9/19.
//  Copyright © 2019 Elise Farley. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var iceCream = IceCream()
    @IBOutlet weak var baseSegment: UISegmentedControl!
    @IBOutlet weak var flavorSegment: UISegmentedControl!
    @IBOutlet weak var sprinklesSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //choose base
    @IBAction func basePicked(_ sender: UISegmentedControl) {
        switch baseSegment.selectedSegmentIndex
        {
        case 0:
            iceCream.base = "cup"
        case 1:
            iceCream.base = "cone"
        default:
            break
        }
    }
    
    //choose flavor
    @IBAction func flavorPicked(_ sender: UISegmentedControl) {
        switch flavorSegment.selectedSegmentIndex
        {
        case 0:
            iceCream.flavor = "chocolate"
        case 1:
            iceCream.flavor = "vanilla"
        default:
            break
        }
    }
    
    //choose sprinkles, yes or no
    @IBAction func sprinklesPicked(_ sender: UISegmentedControl) {
        switch sprinklesSegment.selectedSegmentIndex
        {
        case 0:
            iceCream.sprinkles = true
        case 1:
            iceCream.sprinkles = false
        default:
            break
        }
    }
    
    //can't continue to the next screen unless something is chosen for each category
    @IBAction func onButtonTapped(_ sender: Any) {
        if(baseSegment.selectedSegmentIndex == 0 || baseSegment.selectedSegmentIndex == 1) && (flavorSegment.selectedSegmentIndex == 0 || flavorSegment.selectedSegmentIndex == 1) && (sprinklesSegment.selectedSegmentIndex == 0 || sprinklesSegment.selectedSegmentIndex == 1)
        {
            performSegue(withIdentifier: "SecondToThird", sender: Any?.self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! ThirdViewController
        dvc.iceCream = self.iceCream
    }
}

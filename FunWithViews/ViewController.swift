//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstBlock: UIView!
    
    @IBOutlet weak var secondBlock: UIView!
    
    @IBOutlet weak var thirdBlock: UIView!
    
    @IBOutlet weak var fourthBlock: UIView!
    
    @IBOutlet weak var fifthBlock: UIView!
    
    @IBOutlet weak var sixthBlock: UIView!
    
    @IBOutlet weak var seventhBlock: UIView!
    
    @IBOutlet weak var firstRoll: UILabel!
    
    @IBOutlet weak var secondRoll: UILabel!
    
    @IBOutlet weak var thirdRoll: UILabel!
    
    @IBOutlet weak var fourthRoll: UILabel!
    
    @IBOutlet weak var fifthRoll: UILabel!
    
    @IBOutlet weak var sixthRoll: UILabel!
    
    var count = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstBlock.hidden = true
        secondBlock.hidden = true
        thirdBlock.hidden = true
        fourthBlock.hidden = true
        fifthBlock.hidden = true
        sixthBlock.hidden = true
        seventhBlock.hidden = true
        firstRoll.hidden = true
        secondRoll.hidden = true
        thirdRoll.hidden = true
        fourthRoll.hidden = true
        fifthRoll.hidden = true
        sixthRoll.hidden = true
        
    }
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func hideAllBlocks() {
        firstBlock.hidden = true
        secondBlock.hidden = true
        thirdBlock.hidden = true
        fourthBlock.hidden = true
        fifthBlock.hidden = true
        sixthBlock.hidden = true
        seventhBlock.hidden = true
    }
    
    func hideAllLabels() {
        firstRoll.hidden = false; firstRoll.text = nil
        secondRoll.hidden = true; secondRoll.text = nil
        thirdRoll.hidden = true; thirdRoll.text = nil
        fourthRoll.hidden = true; fourthRoll.text = nil
        fifthRoll.hidden = true; fifthRoll.text = nil
        sixthRoll.hidden = true; sixthRoll.text = nil
    }
    
    
    func resetAll() {
        hideAllBlocks()
        hideAllLabels()
    }
    
    func rearrangeDie(number: Int) {
        
        switch number {
            
        case 1:
            hideAllBlocks()
            fourthBlock.hidden = false
            
        case 2:
            hideAllBlocks()
            secondBlock.hidden = false
            sixthBlock.hidden = false
            
            
        case 3:
            hideAllBlocks()
            thirdBlock.hidden = false
            fourthBlock.hidden = false
            fifthBlock.hidden = false
            
            
        case 4:
            hideAllBlocks()
            firstBlock.hidden = false
            thirdBlock.hidden = false
            fifthBlock.hidden = false
            seventhBlock.hidden = false
            
            
        case 5:
            hideAllBlocks()
            firstBlock.hidden = false
            thirdBlock.hidden = false
            fourthBlock.hidden = false
            fifthBlock.hidden = false
            seventhBlock.hidden = false
            
            
        case 6:
            hideAllBlocks()
            firstBlock.hidden = false
            secondBlock.hidden = false
            thirdBlock.hidden = false
            fifthBlock.hidden = false
            sixthBlock.hidden = false
            seventhBlock.hidden = false
        default:
            count = 1
            
        }

    }
    
    func showRoll(counter: Int, value: Int) {
        
        switch counter {
        case 1:
            firstRoll.hidden = false
            firstRoll.text = "\(value)"
        case 2:
            secondRoll.hidden = false
            secondRoll.text = "\(value)"
        case 3:
            thirdRoll.hidden = false
            thirdRoll.text = "\(value)"
        case 4:
            fourthRoll.hidden = false
            fourthRoll.text = "\(value)"
        case 5:
            fifthRoll.hidden = false
            fifthRoll.text = "\(value)"
        case 6:
            sixthRoll.hidden = false
            sixthRoll.text = "\(value)"
        default:
            hideAllLabels()
            firstRoll.text = "\(value)"
            count = 1
            
        }
    }
    
    @IBAction func rollTheDice(sender: AnyObject) {
        let x = randomDiceRoll()
        print("Number generated is \(x)")
        showRoll(count, value: x)
        rearrangeDie(x)
        count += 1
    }
    
    
    
    
}














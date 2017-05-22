//
//  ViewController.swift
//  FakeTheBackStack
//
//  Created by Kurt Prenger on 5/22/17.
//

import UIKit

class ViewController: UIViewController {
    
    let colorViewControllerID = "colorViewController"

    @IBOutlet var colorButtons: [UIButton]!
    
    @IBAction func colorTouched(_ sender: UIButton) {
        let currentColor = Color(with: sender.tag)
        let colorsArray = currentColor.colorsUpToAndIncluding()
        
        var colorsVCArray = [UIViewController]()
        
        for color in colorsArray {
            guard let colorVC = UIStoryboard.init(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: colorViewControllerID) as? ColorViewController else { return }
            
            colorVC.color = color
            colorsVCArray.append(colorVC)
        }
        
        var finalControllers: [UIViewController]
        if let currentStack = navigationController?.viewControllers {
            finalControllers = currentStack + colorsVCArray
        } else {
            finalControllers = colorsVCArray
        }
        
        navigationController?.setViewControllers(finalControllers, animated: true)
    }
    
    override var description: String {
        return "Title view controller\n"
    }

}


//
//  ColorViewController.swift
//  FakeTheBackStack
//
//  Created by Kurt Prenger on 5/22/17.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var colorTitle: UILabel!
    @IBOutlet weak var currentStackText: UITextView!
    
    var color: Color! {
        didSet {
            loadViewIfNeeded()
            colorTitle.text = color.rawValue
            colorTitle.backgroundColor = color.color
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewControllers = navigationController?.viewControllers else { return }
        currentStackText.text = "Current stack: \(viewControllers)"
    }
    
    override var description: String {
        return "ViewController with color: \(color.rawValue)\n"
    }
    
}

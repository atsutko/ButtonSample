//
//  ViewController.swift
//  ButtonSample
//
//  Created by 高尾敦 on 2017/10/14.
//  Copyright © 2017年 takao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    var buttonTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapButton(sender: UIButton){
    print(sender.tag)
        buttonTitle = sender.titleLabel?.text
        self.performSegue(withIdentifier: "toNext", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController = segue.destination as! SecondViewController
        secondViewController.text = buttonTitle
        
    }

}


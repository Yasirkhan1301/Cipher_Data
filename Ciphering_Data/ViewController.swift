//
//  ViewController.swift
//  Ciphering_Data
//
//  Created by Yasir khan on 10/10/2020.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var Plain_text: NSTextField!
    
    @IBOutlet weak var Cipher_text: NSTextField!
    @IBOutlet weak var Key_text: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func Cipher(_ sender: Any) {
        
    }
    
    @IBAction func encryption(_ sender: Any) {
    }
    
    @IBAction func decryption(_ sender: Any) {
    }
    
    
}


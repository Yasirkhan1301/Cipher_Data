//
//  ViewController.swift
//  Ciphering_Data
//
//  Created by Yasir khan on 10/10/2020.
//

import Cocoa

class ViewController: NSViewController {
    var shift = Bool()

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
        if (sender as AnyObject).tag == 1
        {
            shift = true
        }
        
    }
    
    @IBAction func encryption(_ sender: Any) {
        let plain = String(Plain_text.stringValue)
        let key = Int(Key_text.stringValue)
        
        if shift == true {
            let s = Shift_Cipher()
            let t = s.shiftCipherEncrypt(value: plain, shift: key!)
            Cipher_text.stringValue = t
        }
    }
    
    @IBAction func decryption(_ sender: Any) {
    }
    
    
}


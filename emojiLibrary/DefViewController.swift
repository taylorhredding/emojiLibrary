//
//  DefViewController.swift
//  emojiLibrary
//
//  Created by Taylor Redding on 10/18/16.
//  Copyright © 2016 Taylor Redding. All rights reserved.
//

import UIKit

class DefViewController: UIViewController {
    
    var emoji = Emoji()
    @IBOutlet weak var txtDef: UILabel!
    @IBOutlet weak var lblEmoji: UILabel!
    @IBOutlet weak var txtBirth: UILabel!
    @IBOutlet weak var txtCat: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblEmoji.text = emoji.strEmoji
        txtDef.text = emoji.def
        txtCat.text = emoji.cat
        txtBirth.text = "BirthYear: \(emoji.birth)"
       

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

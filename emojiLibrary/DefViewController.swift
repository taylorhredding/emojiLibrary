//
//  DefViewController.swift
//  emojiLibrary
//
//  Created by Taylor Redding on 10/18/16.
//  Copyright © 2016 Taylor Redding. All rights reserved.
//

import UIKit

class DefViewController: UIViewController {
    
    var emoji = ""
    @IBOutlet weak var txtDef: UILabel!
    @IBOutlet weak var lblEmoji: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblEmoji.text = emoji
        if emoji == "🐹"{
            txtDef.text = "Hamster"
        }
        if emoji == "👑"{
            txtDef.text = "Crown"
        }
        if emoji == "🎅"{
            txtDef.text = "Santa"
        }
        if emoji == "🐗"{
            txtDef.text = "Boar's Head"
        }
        if emoji == "😂"{
            txtDef.text = "Laughing So Hard I'm Crying!"
        }
        if emoji == "😎"{
            txtDef.text = "Sunglasses Dude"
        }
        if emoji == "👮"{
            txtDef.text = "Cop"
        }

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

//
//  ViewController.swift
//  emojiLibrary
//
//  Created by Taylor Redding on 10/18/16.
//  Copyright © 2016 Taylor Redding. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tblView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tblView.delegate = self
        tblView.dataSource = self
        
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.strEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSeg", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.strEmoji = "😂"
        emoji1.def = "Laughing So Hard I'm Crying"
        emoji1.cat = "Smiley"
        emoji1.birth = 2009
        
        let emoji2 = Emoji()
        emoji2.strEmoji = "😎"
        emoji2.def = "Sunglasses Dude"
        emoji2.cat = "Smiley"
        emoji2.birth = 2019
        
        let emoji3 = Emoji()
        emoji3.strEmoji = "👮"
        emoji3.def = "Cop"
        emoji3.cat = "Smiley"
        emoji3.birth = 2010
        
        let emoji4 = Emoji()
        emoji4.strEmoji = "🐹"
        emoji4.def = "Hamster"
        emoji4.cat = "Animal"
        emoji4.birth = 2011
        
        let emoji5 = Emoji()
        emoji5.strEmoji = "🐗"
        emoji5.def = "Boar's Head"
        emoji5.cat = "Animal"
        emoji5.birth = 2012
        
        let emoji6 = Emoji()
        emoji6.strEmoji = "👑"
        emoji6.def = "Crown"
        emoji6.cat = "Thing"
        emoji6.birth = 2015
        
        let emoji7 = Emoji()
        emoji7.strEmoji = "🎅"
        emoji7.def = "Santa"
        emoji7.cat = "Smiley"
        emoji7.birth = 2000
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
    }


}


//
//  DefinitionViewController.swift
//  Jack Emojis
//
//  Created by Jackson Isiko on 11/7/17.
//  Copyright © 2017 YOITPRO. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    

    @IBOutlet weak var definitionLable: UILabel!
    @IBOutlet weak var emojiLable: UILabel!
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //print(emoji)
        //definitionLable.text = "Hello"
        
        emojiLable.text = emoji
        
        if emoji == "👿" {
            definitionLable.text = " A cute Kitty! "
        }
        if emoji == "😇" {
            definitionLable.text = " Smile face with a halo! "
        }
        if emoji == "😎" {
            definitionLable.text = " Dude with sunglasses!"
        }
        if emoji == "😘" {
            definitionLable.text = "Lovely!"
        }
        if emoji == "🙏🏿" {
            definitionLable.text = "Weebale"
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

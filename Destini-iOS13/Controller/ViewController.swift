//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.story[0].title
        choice1Button.setTitle(storyBrain.story[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.story[0].choice2, for: .normal)
        print("Ana et8ayart")
    }


    @IBAction func choiceMade(_ sender: UIButton) {
        
        let decison = sender.currentTitle!
        
        storyLabel.text = storyBrain.nextStory(userChoice: decison)
        choice1Button.setTitle(storyBrain.nextChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.nextChoice2(), for: .normal)
        }
    
    
   
}


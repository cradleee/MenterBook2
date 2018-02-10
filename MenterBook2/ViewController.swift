//
//  ViewController.swift
//  MenterBook2
//
//  Created by kamano yurika on 2018/02/10.
//  Copyright © 2018年 釜野由里佳. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabl: UILabel!
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name:"たいてぃ", imageName: "taithi.jpg", course: "WebS,WebD"))
        
        setUI()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setUI() {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabl.text = mentorArray[index].course
    }
    @IBAction func mae(){
        index =  index  - 1
        setUI()
    }
    
    @IBAction func tugi(){
        index = index  + 1
        setUI()
    }


}


//
//  ViewController2.swift
//  @App
//
//  Created by R93 on 27/12/23.
//

import UIKit

class ViewController2: UIViewController{
    
    
    
    
    @IBOutlet weak var image: UIImageView!
    
    
    @IBOutlet weak var GameName: UILabel!
    
    
    @IBOutlet weak var GamePrice: UILabel!
  
    var img = UIImage()
    var gameName = ""
    var gamePrice = ""
    var dis = ["FREE FIRE = short for forfeit and is a term used in gaming when a person or team gives up"," FS 15 = With a brand new graphics and physics engine, Farming Simulator 15 offers an immense open world filled with details and visual effects!","GOD OF WAR = players control Kratos, a Spartan warrior who is sent by the Greek gods to kill Ares, the god of war","GTA 6 = an action-adventure game set in the fictional open world state of Leonida—based on Florida—which includes Vice City, a fictionalised version of Miami.","GTA 5 =  an action-adventure game played from either a third-person or first-person perspective.    "]
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GameName.text = gameName
        image.image = img
        GamePrice.text = gamePrice

    }
    
    


}

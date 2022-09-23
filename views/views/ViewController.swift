//
//  ViewController.swift
//  views
//
//  Created by Muharrem Köroğlu on 23.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var viewImageView: UIImageView!

    var viewNameArray = ["Kız Kulesi","Tac Mahal","Keops Piramidi","Everest Dağı"]
    var viewArray = ["kız kulesi","tac mahal","keops","everest"]

    override func viewDidLoad() {
        super.viewDidLoad()
        changePic()
        viewImageView.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(changePic))
        viewImageView.addGestureRecognizer(tap)
        
    }

    @objc func changePic () {
        let random = Int(arc4random_uniform(UInt32(viewArray.count)))//Rastgele sayı üretir
        viewImageView.image = UIImage(named: "\(viewArray[random])")
        nameLabel.text = "\(viewNameArray[random])"
   
    }
}


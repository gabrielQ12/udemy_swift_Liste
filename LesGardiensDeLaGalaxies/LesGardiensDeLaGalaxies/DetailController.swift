//
//  DetailController.swift
//  LesGardiensDeLaGalaxies
//
//  Created by Gaby on 11/02/2024.
//

import UIKit

class DetailController: UIViewController {
    
    @IBOutlet weak var topView: UIImageView!
    @IBOutlet weak var profileView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    var guardian: Guardian?

    override func viewDidLoad() {
        super.viewDidLoad()
        guard  guardian != nil else { return }
        setup()
    }
    
    func setup() {
        topView.image = UIImage(named: guardian!.imagePath)
        profileView.image = UIImage(named: guardian!.imagePath)
        nameLbl.text = guardian!.name
        descLbl.text = guardian!.desc
        profileView.layer.cornerRadius = self.profileView.frame.height / 2
        profileView.layer.borderWidth = 2
        profileView.layer.borderColor = UIColor.systemBackground.cgColor 
    }



}

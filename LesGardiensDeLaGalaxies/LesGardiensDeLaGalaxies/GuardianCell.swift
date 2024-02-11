//
//  GuardianCell.swift
//  LesGardiensDeLaGalaxies
//
//  Created by Gaby on 11/02/2024.
//

import UIKit

class GuardianCell: UITableViewCell {

    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var guardian: Guardian!
    
    func setupCell(_ guardian: Guardian) {
        self.guardian = guardian
        self.imageV.image = UIImage(named: self.guardian.imagePath)
        self.nameLbl.text = self.guardian.name
        
    }

}

//
//  CustomViewCell.swift
//  Demo_Reusable
//
//  Created by khuc.d.m.nguyen on 6/20/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class CustomViewCell: UITableViewCell, ReusableView {
    @IBOutlet weak var myImgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    static var defaultReuseIdentifier = "Cell"
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configCell(people: People) {
        nameLabel.text = people.name
        guard
            let photoName = people.photo,
            let jobName = people.job else {
            return
        }
        myImgView.image = UIImage(named: photoName)
        jobLabel.text = "Job: " + jobName
    }
    
   
}

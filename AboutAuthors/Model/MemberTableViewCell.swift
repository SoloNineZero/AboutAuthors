//
//  MemberTableViewCell.swift
//  AboutAuthors
//
//  Created by Игорь Солодянкин on 03.02.2023.
//

import UIKit

class MemberTableViewCell: UITableViewCell {

    @IBOutlet weak var photo: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var role: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        photo.layer.cornerRadius = 10
        
    }

    func set(member: TeamMember) {
        self.name.text = member.name
        self.role.text = member.role
        self.photo.image = member.photo
    }

}

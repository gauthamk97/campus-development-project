//
//  Card.swift
//  CDP
//
//  Created by Gautham Kumar on 03/09/16.
//  Copyright © 2016 Gautham Kumar. All rights reserved.
//

import UIKit

class Card: UIView {

    var profileImage = UIImageView(frame: CGRectMake(10, 5, 40, 40))
    var nameLabel = UILabel(frame: CGRectMake(55, 5, screenSize.width-20, 20))
    var dateLabel = UILabel(frame: CGRectMake(57, 25, screenSize.width-20, 20))
    var captionLabel = UILabel(frame: CGRectMake(10, 40, screenSize.width-20, 40))
    var attachedImage = UIImageView(frame: CGRectMake(0, 80, screenSize.width, 160))
    
    init(yPosition: CGFloat, smallImage: UIImage, name: String, date: String, caption: String, mainImage: UIImage) {
        
        super.init(frame: CGRectMake(0, yPosition, screenSize.width, cardHeight))
        
        self.addSubview(profileImage)
        self.addSubview(nameLabel)
        self.addSubview(dateLabel)
        self.addSubview(captionLabel)
        self.addSubview(attachedImage)
        
        profileImage.image = smallImage
        nameLabel.text = name
        dateLabel.text = date
        captionLabel.text = caption
        attachedImage.image = mainImage
        
        self.basicInitialization()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func basicInitialization() {
        self.backgroundColor = UIColor.whiteColor()
        nameLabel.font = UIFont(name: "TrebuchetMS-Bold", size: 17)
        dateLabel.font = UIFont(name: "TrebuchetMS", size: 10)
        captionLabel.font = UIFont(name: "Helvetica", size: 14)
        
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}

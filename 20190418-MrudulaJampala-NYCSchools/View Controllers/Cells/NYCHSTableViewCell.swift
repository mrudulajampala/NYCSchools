//
//  NYCHSTableViewCell.swift
//  20190418-MrudulaJampala-NYCSchools
//
//  Created by Mrudula Jampala on 4/18/19.
//  Copyright © 2019 Mrudula Jampala. All rights reserved.
//

import UIKit



class NYCHSTableViewCell: UITableViewCell {

    // MARK: IBOutlet
    @IBOutlet var cardView: UIView!
    @IBOutlet var sideBarView: UIView!
    
    @IBOutlet var schoolNameLbl: UILabel!
    @IBOutlet var schoolAddrLbl: UILabel!
    @IBOutlet var schoolPhoneNumBtn: UIButton!
    @IBOutlet var navigateToAddrBtn: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        chooseRandomColorForCard()
        setupCardViewShadows()
        
        self.schoolPhoneNumBtn.layer.cornerRadius = 15
        self.navigateToAddrBtn.layer.cornerRadius = 15
    }
    
    // MARK: Card View Customization Functions
    
    func chooseRandomColorForCard(){
        
        self.sideBarView.backgroundColor = UIColor.randomColorForCardViewCell()
    }
    
    func setupCardViewShadows(){
        let view = cardView
        view?.layer.cornerRadius = 15.0
        view?.layer.shadowColor = UIColor.black.cgColor
        view?.layer.shadowOffset = CGSize(width: 0, height: 2)
        view?.layer.shadowOpacity = 0.8
        view?.layer.shadowRadius = 3
        view?.layer.masksToBounds = false
    }


}

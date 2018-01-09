//
//  UpcomingEventsCell.swift
//  DoctorTimeScheduler
//
//  Created by vamsi krishna reddy kamjula on 1/6/18.
//  Copyright © 2018 vamsi krishna reddy kamjula. All rights reserved.
//

import UIKit

class UpcomingEventsCell: UICollectionViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var addressLblOne: UILabel!
    @IBOutlet weak var addressLblTwo: UILabel!
    @IBOutlet weak var drNameLbl: UILabel!
    @IBOutlet weak var specialistLbl: UILabel!
    
    var date: String! {
        didSet {
            dateLabel.text = date
        }
    }

    var time: String! {
        didSet {
            timeLbl.text = time
        }
    }
    
    var addressOne: String! {
        didSet {
            addressLblOne.text = addressOne
        }
    }
    
    var addressTwo: String! {
        didSet {
            addressLblTwo.text = addressTwo
        }
    }
    
    var drName: String! {
        didSet {
            drNameLbl.text = drName
        }
    }
    
    var specialist: String! {
        didSet {
            specialistLbl.text = specialist
        }
    }


}


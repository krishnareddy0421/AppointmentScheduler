//
//  PastEventsCell.swift
//  DoctorTimeScheduler
//
//  Created by vamsi krishna reddy kamjula on 1/6/18.
//  Copyright © 2018 vamsi krishna reddy kamjula. All rights reserved.
//

import UIKit

class PastEventsCell: UICollectionViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var timeAndDrNameLbl: UILabel!
    @IBOutlet weak var specialistLbl: UILabel!
    
    var date: String! {
        didSet {
            dateLbl.text = date
        }
    }
    
    var timeAndDrName: String! {
        didSet {
            timeAndDrNameLbl.text = timeAndDrName
        }
    }
    
    var specialist: String! {
        didSet {
            specialistLbl.text = specialist
        }
    }
}

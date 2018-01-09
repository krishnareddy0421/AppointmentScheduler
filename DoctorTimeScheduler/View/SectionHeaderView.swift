//
//  SectionHeaderView.swift
//  DoctorTimeScheduler
//
//  Created by vamsi krishna reddy kamjula on 1/6/18.
//  Copyright © 2018 vamsi krishna reddy kamjula. All rights reserved.
//

import UIKit

class SectionHeaderView: UICollectionReusableView {
    
    // MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var allTypesBtn: UIButton!
    @IBOutlet weak var asthmaOnlyBtn: UIButton!
    
    var headerTitle: String! {
        didSet {
            titleLabel.text = headerTitle
        }
    }
    
    @IBAction func allTypesBtnPressed(_ sender: Any) {
        allTypesBtn.setTitleColor(UIColor.black, for: .normal)
        asthmaOnlyBtn.setTitleColor(UIColor.lightGray, for: .normal)
    }

    @IBAction func asthmaOnlyBtnPressed(_ sender: Any) {
        asthmaOnlyBtn.setTitleColor(UIColor.black, for: .normal)
        allTypesBtn.setTitleColor(UIColor.lightGray, for: .normal)
  
    }

}

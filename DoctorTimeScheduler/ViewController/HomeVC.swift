//
//  ViewController.swift
//  DoctorTimeScheduler
//
//  Created by vamsi krishna reddy kamjula on 1/5/18.
//  Copyright © 2018 vamsi krishna reddy kamjula. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    var appointments = [Appointment]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        appointments.append(Appointment(drName: "Dr. Hudak", specialist: "Allergy Specialist", profImg: UIImage(named: "profImage"), appDate: "Jan 5, 2018", appTime: "2:00 PM", addressLine1: "7814 Hanover Pkwy", addressLine2: "Greenbelt, MD 20770"))
        appointments.append(Appointment(drName: "Dr. Chidekel", specialist: "Pediatric Medicine", profImg: UIImage(named: "profImage"), appDate: "Jan 6, 2018", appTime: "8:00 AM", addressLine1: "7730 Hanover Pkwy", addressLine2: "Greenbelt, MD 20771"))
    }
}


extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return appointments.count
        } else {
            return appointments.count
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "upcomingCell", for: indexPath) as! UpcomingEventsCell
            
            cell.date = appointments[indexPath.row].appDate
            cell.time = appointments[indexPath.row].appTime
            cell.addressOne = appointments[indexPath.row].addressLine1
            cell.addressTwo = appointments[indexPath.row].addressLine2
            cell.drName = appointments[indexPath.row].drName
            cell.specialist = appointments[indexPath.row].specialist
            
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pastCell", for: indexPath) as! PastEventsCell
            
            cell.date = appointments[indexPath.row].appDate
            cell.timeAndDrName = "\(appointments[indexPath.row].appTime!) - \(appointments[indexPath.row].drName!)"
            cell.specialist = appointments[indexPath.row].specialist
            
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if indexPath.section == 0 {
            let sectionHeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "SectionHeaderView", for: indexPath) as! SectionHeaderView
        
            sectionHeaderView.headerTitle = "Upcoming Visits"
            sectionHeaderView.allTypesBtn.isHidden = true
            sectionHeaderView.asthmaOnlyBtn.isHidden = true

            return sectionHeaderView
        } else {
            let sectionHeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "SectionHeaderView", for: indexPath) as! SectionHeaderView
            
            sectionHeaderView.headerTitle = "Past Vists"
            sectionHeaderView.allTypesBtn.isHidden = false
            sectionHeaderView.asthmaOnlyBtn.isHidden = false

            return sectionHeaderView

        }
    }
    
    
}

extension HomeVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height * 0.25)
        } else {
            return CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height * 0.15)
        }
    }
}


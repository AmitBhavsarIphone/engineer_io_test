//
//  PostCell.swift
//  engineer_io_test
//
//  Created by Amit on 03/04/19.
//  Copyright © 2019 MAC104. All rights reserved.
//

import UIKit

final class PostCell: UITableViewCell {

    //MARK:- outlets
    @IBOutlet private weak var lblTitle       : UILabel!
    @IBOutlet private weak var lblCreatedDate : UILabel!
    @IBOutlet private weak var switchActivate : UISwitch!
    
    var post: Post! {
        didSet {
            lblTitle.text = post.title
            lblCreatedDate.text = "-"
            switchActivate.isOn = post.isActivated
            
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
            if let date = formatter.date(from: post.createdAt) as Date? {
                formatter.dateFormat = "yyyy-MM-dd HH:mm"
                lblCreatedDate.text = formatter.string(from: date)
            }
        }
    }
}

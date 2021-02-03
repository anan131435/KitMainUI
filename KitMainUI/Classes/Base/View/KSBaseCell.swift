//
//  KSBaseCell.swift
//  Kit
//
//  Created by 韩志峰 on 2020/6/19.
//  Copyright © 2020 韩志峰. All rights reserved.
//

import UIKit

public class KSBaseCell: UITableViewCell {

    public override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
           super.init(style: style, reuseIdentifier: reuseIdentifier)
           addChildViews()
           setupConstrains()
           selectionStyle = .none
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
      public  func addChildViews(){
           contentView.backgroundColor = .white
          
       }
      public func setupConstrains(){
            
        }
}

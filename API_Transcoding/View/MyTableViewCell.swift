//
//  MyTableViewCell.swift
//  API_Transcoding
//
//  Created by Anusha Raju on 12/3/24.
//

import UIKit

class MyTableViewCell: UITableViewCell {


    @IBOutlet weak var id: UILabel!
    
    @IBOutlet weak var rtmp_stream_uri: UILabel!
    
    @IBOutlet weak var size: UILabel!
    
    
    @IBOutlet weak var http_uri: UILabel!
    
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var progress: UILabel!
    
    @IBOutlet weak var rtmp_base_uri: UILabel!
    
    @IBOutlet weak var bitrate: UILabel!
    
    @IBOutlet weak var height: UILabel!
    
    @IBOutlet weak var state: UILabel!
    
    @IBOutlet weak var width: UILabel!
    
    @IBOutlet weak var rtmp_uri: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

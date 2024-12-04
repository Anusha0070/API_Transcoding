//
//  TranscodingVC.swift
//  API_Transcoding
//
//  Created by Anusha Raju on 12/3/24.
//

import UIKit

class TranscodingVC: UIViewController {

    @IBOutlet weak var custmTableView: UITableView!
        
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var duration: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    var newData : [TranscodingModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        custmTableView.dataSource = self
        getURLData()
        
        custmTableView.backgroundColor = .black
    }
    
<<<<<<< HEAD
    
    
=======
>>>>>>> 9815997 (Converted to MVC architecture)
    func getURLData(){
        print("function get URL")
        
        let sharedInstance = APIManager.sharedInstance
        
        let url : String = "https://gist.githubusercontent.com/dbackeus/484315/raw/dfeb530f9619bb74af5d537280a0b3b305410d01/videos.json"
        
        sharedInstance.fetchData(from: url){ [weak self] data in
<<<<<<< HEAD
            self?.newData = data
            self?.custmTableView.reloadData()
            
            let id = self?.newData[0].id ?? ""
            let duration = self?.newData[0].duration ?? 0.0
            let title = self?.newData[0].title ?? ""
            
            self?.titleLabel.text = title
            self?.id.text = "(\(id))"
            self?.duration.text = String(duration)
=======
            
            DispatchQueue.main.async {
                self?.newData = data
                
                self?.custmTableView.reloadData()
                
                let id = self?.newData[0].id ?? ""
                let duration = self?.newData[0].duration ?? 0.0
                let title = self?.newData[0].title ?? ""
                
                self?.titleLabel.text = title
                self?.id.text = "(\(id))"
                self?.duration.text = String(duration)
            }
            
>>>>>>> 9815997 (Converted to MVC architecture)
        }
    
    }

}

extension TranscodingVC : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section < newData.count {
            print(newData[section].transcodings.count)
            return newData[section].transcodings.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? MyTableViewCell else {
            return UITableViewCell()
        }
        
        if indexPath.section < newData.count {
            let transcodingList = newData[indexPath.section].transcodings
            if indexPath.row < transcodingList.count {
                let transcoding = transcodingList[indexPath.row]

                // Assign data to the cell
                cell.id.text = "id: \(transcoding.id)"
                cell.rtmp_stream_uri.text = "rtmp_stream_uri: \(transcoding.rtmp_stream_uri)"
                cell.size.text = "size: \(transcoding.size)"
                cell.http_uri.text = "http_uri: \(transcoding.http_uri)"
                cell.progress.text = "progress: \(transcoding.progress)"
                cell.rtmp_base_uri.text = "rtmp_base_uri: \(transcoding.rtmp_base_uri)"
                cell.bitrate.text = "bitrate: \(transcoding.bitrate)"
                cell.height.text = "height \(transcoding.height)"
                cell.rtmp_uri.text = "rtmp_uri: \(transcoding.rtmp_uri)"
                cell.state.text = "state: \(transcoding.state)"
                cell.width.text = "width: \(transcoding.width)"
            }
            
        }
        return cell
    }
}


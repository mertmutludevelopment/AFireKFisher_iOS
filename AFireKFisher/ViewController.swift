//
//  ViewController.swift
//  AFireKFisher
//
//  Created by MERT MUTLU on 15.04.2024.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    private var url = "https://jsonplaceholder.typicode.com"
    
    private var photos : [Photo] =  []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initialize()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    private func initialize(){
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.fetchData()
        
    }
    
    private func fetchData(){
        AF.request(self.url + "/photos" , method: .get).responseDecodable(of: [Photo].self ) { [weak self] response in
            
            self?.photos = response.value ?? []
            self?.tableView.reloadData()
        }
    }


}
extension ViewController : UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "elementCell", for: indexPath) as! ElementTableViewCell
        
        cell.photo = self.photos[indexPath.row]
        
        return cell
        
    }
    
}


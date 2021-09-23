//
//  AnahiVC.swift
//  ProyectoCompartido
//
//  Created by Anahi Rojas on 21/09/21.
//

import UIKit

class AnahiVC: UIViewController {
    
    let tableView = UITableView()
    let menu = ["Opcion 1" , "Opcion 2" , "Opcion 3"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "menuCell")
        
        configureViewController()
        configureTableView()
    }
    
    func configureViewController() {
        view.backgroundColor = .systemBackground
        title = "Anahi"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    func configureTableView(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.dataSource = self
        
        tableView.frame = view.bounds
        tableView.rowHeight = 80
        tableView.removeExcessCells()
    }
}


extension AnahiVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath)
      cell.textLabel?.text = menu[indexPath.row]
      return cell
    }


}

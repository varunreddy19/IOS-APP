//
//  ViewController.swift
//  Gopi_ElectronicStore
//
//  Created by student on 4/26/22.
//

import UIKit

class ElectronicViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Electronic.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = Electronic[indexPath.row][0]
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "detailsSegue"{
            let destination = segue.destination as! DetailViewController
            destination.prod = Electronic[tableView.indexPathForSelectedRow!.row][0]
            destination.cost = Electronic[tableView.indexPathForSelectedRow!.row][1]
        }
    }
}


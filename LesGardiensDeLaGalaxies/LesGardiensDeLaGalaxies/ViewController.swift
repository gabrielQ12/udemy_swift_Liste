//
//  ViewController.swift
//  LesGardiensDeLaGalaxies
//
//  Created by Gaby on 11/02/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView:UITableView!
    
    var guardians = Datas().guardians
    let cellID = "GuardianCell"
    let segueID = "ToDetail"

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueID {
            if let detail = segue.destination as? DetailController {
                detail.guardian = sender as? Guardian
            }
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return guardians.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellID)
            as? GuardianCell {
            cell.setupCell(guardians[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let guardianSelected = guardians[indexPath.row]
        performSegue(withIdentifier: segueID, sender: guardianSelected)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 116
    
    }
}


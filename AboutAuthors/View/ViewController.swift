//
//  ViewController.swift
//  AboutAuthors
//
//  Created by Игорь Солодянкин on 03.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let teamMembers = [
        TeamMember(name: "Игорь Солодянкин", role: "TeamLeader", photo: UIImage(named: "igor")!),
        TeamMember(name: "Алексей Манохин", role: "Developer", photo: UIImage(named: "aleksey")!),
        TeamMember(name: "Айдарс Усманов", role: "Developer", photo: UIImage(named: "aidar")!),
        TeamMember(name: "Максим Гурков", role: "Developer", photo: UIImage(named: "maksim")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        teamMembers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellMemberTeam", for: indexPath) as! MemberTableViewCell
        let member = teamMembers[indexPath.row]
        
        
//        var content = cell.defaultContentConfiguration()
//        content.text = "Фамилия Имя"
//        content.secondaryText = "Описание"
//        content.image = UIImage.init(named: "igor")
//        cell.contentConfiguration = content
        
        cell.set(member: member)
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        UIView.animate(withDuration: 0.8, delay: 0.1 * Double(indexPath.row), options: .curveEaseInOut, animations: {
        cell.alpha = 1
        })
    }
}

//
//  ViewController.swift
//  Cafe Me app
//
//  Created by Raif Njie on 8/11/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let cafes = [
        ("Blue Bottle Coffee", "123 Mission St", "⭐ 4.5", "WiFi • Quiet"),
        ("Ritual Coffee", "456 Valencia St", "⭐ 4.3", "Local • Busy"),
        ("The Mill", "789 Divisadero St", "⭐ 4.7", "Aesthetic • Instagram"),
        ("Starbucks", "1611 Satellite Blvd Duluth, GA", "⭐ 3.0", "WiFi • Quiet"),
        ("Break Coffee Roasters", "832 Peachtree St", "⭐ 4.3", "Local • Semi-busy • Free Wifi"),
        ("Paris Baguette", "2925 Buford Dr", "⭐ 4.6", "Aesthetic • Bakery • Dine-in")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CafeMe"
        tableView.dataSource = self
        tableView.delegate = self
        
        addLogoFooter()
    }
    func addLogoFooter() {
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 100))
        footerView.backgroundColor = UIColor.systemBackground
        
        let logoImageView = UIImageView()
        logoImageView.image = UIImage(systemName: "cup.and.saucer.fill")
        logoImageView.tintColor = .systemBrown
        logoImageView.contentMode = .scaleAspectFit
        
        let logoLabel = UILabel()
        logoLabel.text = "CafeMe"
        logoLabel.font = UIFont.boldSystemFont(ofSize: 24)
        logoLabel.textColor = .systemBrown
        logoLabel.textAlignment = .center
        
        let stackView = UIStackView(arrangedSubviews: [logoImageView, logoLabel])
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.alignment = .center
        
        footerView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: footerView.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: footerView.centerYAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 40),
            logoImageView.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        tableView.tableFooterView = footerView
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cafes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        let cafe = cafes[indexPath.row]
        cell.textLabel?.text = cafe.0
        cell.detailTextLabel?.text = "\(cafe.1) • \(cafe.2) • \(cafe.3)"
        cell.imageView?.image = UIImage(systemName: "cup.and.saucer")
        cell.imageView?.tintColor = .systemBrown
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let alert = UIAlertController(title: cafes[indexPath.row].0, message: "Cafe details coming soon!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    
}


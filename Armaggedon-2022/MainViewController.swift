import Foundation
import UIKit

class MainViewController: UIViewController {
    
    private var asteroids: Data?

    private let loadSpinner: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.color = .orange
        activityIndicator.startAnimating()
        return activityIndicator
}()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
//        tableView.delegate = self
//        tableView.dataSource = self
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
        return tableView
    }()
    
//https://api.nasa.gov/neo/rest/v1/feed?start_date=2015-09-07&end_date=2015-09-08&api_key=DEMO_KEY
    
    private let url = "https://api.nasa.gov/neo/rest/v1/feed"
    
    var parameters =
        [
            "api_key": "Ora0kTOXkfIgq36UwRzswr0hKbcFsL99usVJWnHo",
            "end_date": "2022-04-02",
            "start_date": "2022-04-01"
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubview()
        view.backgroundColor = .white
        setupNavigationControllerTabBar()
        NetworkManager.shared.getAsteroids(urlString: url , parameters: parameters, completion:
            { [weak self] result in
            guard let self = self else { return }
        })
    }

    private func setupNavigationControllerTabBar() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .systemGray6
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image:UIImage(systemName: "line.3.horizontal.decrease"),
            style: .plain,
            target: self,
            action: #selector(rightBarButtonPressed)
        )
    }
    
    private func addSubview() {
        view.addSubview(tableView)
    }
    
    private func getAsteroids() {
        
    }
    
    @objc private func rightBarButtonPressed() {
//        let filterViewController = FilterViewController()
//        filterViewController.delegate = self
//        navigationController?.pushViewController(filterViewController, animated: true)
    }

}


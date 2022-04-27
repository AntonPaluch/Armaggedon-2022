import UIKit

class TabBarController: UITabBarController {
    
    //MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    func setupTabBar() {
        let mainViewController = MainViewController()
        let deleteViewController = DeleteViewController()
        
        viewControllers = [
            SetupUI(
                rootViewController: mainViewController,
                image: UIImage(systemName: "globe"),
                titleNavBar: "Армагеддон 2022",
                titleTabBar: "Астероды"
            ),
            SetupUI(
                rootViewController: deleteViewController,
                image: UIImage(systemName: "trash"),
                titleNavBar: "Армагеддон 2022",
                titleTabBar: "Уничтожение"
            )
        ]
        
    }
    
    private func SetupUI(rootViewController: UIViewController, image: UIImage?, titleNavBar: String, titleTabBar: String?) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.image = image
        navigationVC.tabBarItem.title = titleTabBar
        tabBar.barTintColor = UIColor(red: 248, green: 248, blue: 248, alpha: 0.92)
        navigationVC.navigationBar.topItem?.title = titleNavBar
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.backgroundColor = UIColor(red: 248, green: 248, blue: 248, alpha: 0.92)
        navigationVC.navigationBar.standardAppearance = navBarAppearance
        navigationVC.navigationBar.scrollEdgeAppearance = navBarAppearance
    
        return navigationVC
    }
}

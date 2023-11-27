
import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    // MARK: - Initial Data
    
    var settingsNames = ["Авиарежим", "Wi-Fi", "Bluetooth", "Сотовая связь", "Режим модема", "VPN"]
    
    // MARK: - UIElements & Outlets
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        return tableView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.addSubview(tableView)
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup & Constraints
    
    private func setupHierarchy() {
        [tableView].forEach {
            view.addSubview($0)
        }
    }
    
    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.top.bottom.right.left.equalTo(view)
        }
    }
    
    // MARK: - Actions
    
    private func buttonPressed() {
    }
}


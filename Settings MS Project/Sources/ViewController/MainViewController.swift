
import UIKit
import SnapKit

final class MainViewController: UIViewController {
    
    // MARK: - State
    
    var settings: [[Setting]]?
    var identifier: String = "Cell"
    
    // MARK: - UIElements
    
    private lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.dataSource = self
        //table.delegate = self
        table.register(MainTableViewCell.self, forCellReuseIdentifier: identifier)
        return table
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupHierarchy()
        setupLayout()
        //useModelData()
    }
    
    // MARK: - Setup & Layout
    
    //private func useModelData() {
    //    settings = Setting.allSettings
    //}
    
    private func setupHierarchy() {
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.top.left.bottom.right.equalTo(view)
        }
    }
}

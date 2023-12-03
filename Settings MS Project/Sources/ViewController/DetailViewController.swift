
import UIKit
import SnapKit

final class DetailViewController: UIViewController {
    
    // MARK: - State
    
    var setting: Setting?
    
    // MARK: - UIElements
    
    private lazy var chosenSettingName: UILabel = {
        let name = UILabel()
        name.textColor = .black
        name.font = UIFont.systemFont(ofSize: 15)
        return name
    }()
    
    public var chosenSettingIcon: UIImageView = {
        let icon = UIImageView()
        icon.clipsToBounds = true
        return icon
    }()
    
    // MARK: - Lyfecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupHierarchy()
        setupLayout()
        useModelData()
    }
    
    // MARK: - Setup & Layout
    
    private func setupHierarchy() {
        [chosenSettingName, chosenSettingIcon].forEach {
            view.addSubview($0)
        }
    }
    
    private func setupLayout() {
        chosenSettingName.snp.makeConstraints { make in
            make.centerX.equalTo(chosenSettingIcon)
            make.top.equalTo(chosenSettingIcon.snp.bottom).offset(10)
        }
        
        chosenSettingIcon.snp.makeConstraints { make in
            make.centerX.centerY.equalTo(view)
        }
    }
    
    private func useModelData() {
        chosenSettingName.text = setting?.name
        chosenSettingIcon.image = setting?.icon
    }
}

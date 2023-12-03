
import UIKit

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings?[section].count ?? 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
           return settings?.count ?? 0
       }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? MainTableViewCell
        cell?.setting = settings?[indexPath.section][indexPath.row]
        cell?.accessoryType = .disclosureIndicator
        return cell ?? UITableViewCell()
    }
}

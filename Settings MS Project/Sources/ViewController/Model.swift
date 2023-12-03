
import UIKit

enum TypeOfSetting: String {
    case ordinary
    case withSwitchButton
    case withStatus
}

struct Setting: Hashable {
    var icon: UIImage?
    var name: String
    var status: String = ""
    var type: TypeOfSetting
}

extension Setting {
    static var allSettings: [[Setting]] = [
        [Setting(icon: UIImage(named: "airplane")!, name: "Авиарежим", type: .withSwitchButton)],
        [Setting(icon: UIImage(named: "wifi")!, name: "Wi-Fi", status: "Не подключено", type: .withStatus)],
        [Setting(icon: UIImage(named: "bluetooth")!, name: "Bluetooth", status: "Вкл.", type: .withStatus)],
        [Setting(icon: UIImage(named: "antenna.radiowaves.left.and.right")!, name: "Сотовая связь", type: .ordinary)],
        [Setting(icon: UIImage(named: "personalhotspot")!, name: "Режим модема", type: .ordinary)],
        [Setting(icon: UIImage(named: "vpn")!, name: "VPN", type: .withSwitchButton)],
        
        [Setting(icon: UIImage(named: "bell.badge")!, name: "Уведомления", type: .ordinary)],
        [Setting(icon: UIImage(named: "speaker.wave.3.fill")!, name: "Звуки, тактильные сигналы", type: .ordinary)],
        [Setting(icon: UIImage(named: "moon.fill")!, name: "Не беспокоить", type: .ordinary)],
        [Setting(icon: UIImage(named: "hourglass")!, name: "Экранное время", type: .ordinary)],
                 
        [Setting(icon: UIImage(named: "gear")!, name: "Основные", type: .ordinary)],
        [Setting(icon: UIImage(named: "switch.2")!, name: "Пункт управления", type: .ordinary)],
        [Setting(icon: UIImage(named: "textformat.size")!, name: "Экран и яркость", type: .ordinary)],
        [Setting(icon: UIImage(named: "home")!, name: "Экран \"Домой\"", type: .ordinary)],
        [Setting(icon: UIImage(named: "accessibility")!, name: "Универсальный доступ", type: .ordinary)]
    ]
}


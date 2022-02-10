import UIKit
import PlaygroundSupport

class MyViewController: UIViewController {
    
    override func loadView() {
        <#code#>let view = UiView()
        view.backgroundColor = .blue
        
        let label = UILabel()
        label.frame = CGReact(x: 150, y:200, width:200, height: 20)
        label.text = "Bem vindos ao curso"
        label.textColor = .white
        
        view.addSubview(label)
        self.view = view
    }
        <#code#>
    }

PlaygroundPage.current.liveView = MyViewController()

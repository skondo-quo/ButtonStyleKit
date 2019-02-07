import UIKit

final class DummyViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now()+1.5) { [weak self] in
            let vc = UIStoryboard(name: "Main", bundle: Bundle(for: ViewController.self)).instantiateViewController(withIdentifier: "vc")
            self?.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

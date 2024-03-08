//
//  MainViewController.swift
//  Dimely
//
//  Created by Rohit Paul on 3/7/24.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { [weak self] _ in
                    self?.launchScreenTransition()
                }
        
    }
    
    func launchScreenTransition() {
        let launchScreen = ExpensesViewController(nibName: "ExpensesView", bundle: nil)
        launchScreen.modalPresentationStyle = .fullScreen
        launchScreen.modalTransitionStyle = .crossDissolve
        guard let rootViewController = UIApplication.shared.windows.first?.rootViewController else {
                    return
                }
        rootViewController.present(launchScreen, animated: true, completion: nil)
    }

}

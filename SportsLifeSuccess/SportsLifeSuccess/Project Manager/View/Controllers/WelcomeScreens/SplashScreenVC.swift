//
//  SplashScreenVC.swift
//  SportsLifeSuccess
//
//  Created by Potenza on 11/08/23.
//

import UIKit

class SplashScreenVC: UIViewController {

    //MARK: IB_OUTLETS
    
    //MARK: DECLARATIONS
    var objTimer = Timer()
    var counter = 0
    
    
    //MARK: VIEW_METHODS
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpView()
    }
    
    //MARK: OTHER_METHODS
    func setUpView() {
        objTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.goToNextScreen), userInfo: nil, repeats: true)
        objTimer.fire()
    }
    
    @objc func goToNextScreen() {
        self.counter += 1
        if counter == 2 {
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WelcomeVC") as! WelcomeVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

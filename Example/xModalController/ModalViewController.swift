//
//  ModalViewController.swift
//  xModalController_Example
//
//  Created by Maruf Nebil Ogunc on 29.08.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white

        let closeModal:UIButton = UIButton(type: UIButtonType.custom)
        closeModal.setTitle("Close Modal", for: UIControlState.normal)
        closeModal.setTitleColor(UIColor.white, for: UIControlState.normal)
        closeModal.titleLabel?.textAlignment = NSTextAlignment.center
        closeModal.backgroundColor = UIColor.darkGray
        closeModal.frame = CGRect(x: 0, y: 0, width: 160, height: 50)
        closeModal.addTarget(self, action: #selector(ModalViewController.closeModal), for: UIControlEvents.touchUpInside)
        self.view.addSubview(closeModal)
    }

    @objc func closeModal() -> () {
            self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

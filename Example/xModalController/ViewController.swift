//
//  ViewController.swift
//  xModalController
//
//  Created by akinogunc on 08/29/2018.
//  Copyright (c) 2018 akinogunc. All rights reserved.
//

import UIKit
import xModalController

class ViewController: UIViewController {

    var screenRect: CGRect!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenRect = UIScreen.main.bounds
    }

    @IBAction func halfScreenModal(_ sender: UIButton)
    {
        //initialize the modal view controller
        let modalVC = ModalViewController()
        
        //set the frame of modal view controller
        let modalFrame = CGRect(x: 0, y: screenRect.height/2, width: screenRect.width, height: screenRect.height/2)

        //set the modal controller
        let modalController = xModalController(parentViewController: self, modalViewController: modalVC, modalFrame: modalFrame)
        
        modalController.showModal()
    }

    @IBAction func squareModal(_ sender: UIButton)
    {
        //initialize the modal view controller
        let modalVC = ModalViewController()
        
        //set the frame of modal view controller
        let modalFrame = CGRect(x: screenRect.width*0.1, y: (screenRect.height - screenRect.width*0.8)/2, width: screenRect.width*0.8, height: screenRect.width*0.8)
        
        //set the modal controller
        let modalController = xModalController(parentViewController: self, modalViewController: modalVC, modalFrame: modalFrame)
        
        modalController.showModal()
    }

    @IBAction func customModal(_ sender: UIButton)
    {
        //initialize the modal view controller
        let modalVC = ModalViewController()
        
        //set the frame of modal view controller
        let modalFrame = CGRect(x: 40, y: 100, width: screenRect.width - 80, height: screenRect.height - 200)
        
        //set the modal controller
        let modalController = xModalController(parentViewController: self, modalViewController: modalVC, modalFrame: modalFrame)
        
        modalController.showModal()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}


//
//  Created by Akin Ogunc on 28.08.2018.
//  Copyright © 2018 Akin Ogunc. All rights reserved.
//

import UIKit

final public class xModalController: NSObject, UIViewControllerTransitioningDelegate {
    
    var parentVC: UIViewController
    var modalVC: UIViewController
    var modalFrame: CGRect
    
    public init(parentViewController: UIViewController, modalViewController: UIViewController, modalFrame: CGRect) {
        self.parentVC = parentViewController
        self.modalVC = modalViewController
        self.modalFrame = modalFrame
        super.init()
    }
    
    public func showModal() -> () {
        parentVC.transitioningDelegate = self
        modalVC.transitioningDelegate = self
        modalVC.modalPresentationStyle = UIModalPresentationStyle.custom
        parentVC.present(modalVC, animated: true, completion: nil)
    }
    
    public func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return xPresentationController(presentedViewController: presented, presenting: presenting, modalFrame: self.modalFrame)
    }
    
}


//Override functions of UIPresentationController
class xPresentationController: UIPresentationController {
    
    var modalFrame: CGRect
    var transparentBackground: UIView
    
    public init(presentedViewController: UIViewController, presenting: UIViewController?, modalFrame: CGRect) {
        self.modalFrame = modalFrame
        self.transparentBackground = UIView(frame: UIScreen.main.bounds)
        self.transparentBackground.backgroundColor = UIColor.black
        self.transparentBackground.alpha = 0.0
        super.init(presentedViewController: presentedViewController, presenting: presenting)
    }
    
    override var frameOfPresentedViewInContainerView: CGRect {
        return self.modalFrame
    }
    
    override func presentationTransitionWillBegin()
    {
        self.containerView?.addSubview(self.transparentBackground)
        
        self.presentedViewController.transitionCoordinator?.animate(alongsideTransition: { (coordinatorContext) -> Void in
            self.transparentBackground.alpha = 0.5
        }, completion: nil)
    }
    
    override func dismissalTransitionWillBegin()
    {
        presentedViewController.transitionCoordinator?.animate(alongsideTransition: { (coordinatorContext) -> Void in
            self.transparentBackground.alpha = 0.0
        }, completion: nil)
    }
    
}


//
//  ViewController.swift
//  UISheetDemo
//
//  Created by Prachit on 04/07/22.
//

//https://www.youtube.com/watch?v=P7NzSWVIlWI

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var button = UIButton(configuration: .filled(), primaryAction: UIAction(handler: { action in
                
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let vc =  SheetViewController(nibName: "SheetViewController", bundle: nil)
            self.present(vc, animated: true)
            print("Click")
        }))
        
        button.setTitle("Present Sheet", for: .normal)
        button.configuration?.cornerStyle = .capsule
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        button.widthAnchor.constraint(equalToConstant: view.frame.size.width - 60).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

    }


}


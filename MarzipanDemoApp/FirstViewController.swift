//
//  FirstViewController.swift
//  MarzipanDemoApp
//
//  Created by Tom on 2018-11-01.
//  Copyright © 2018 Q42. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    tabBarController?.configureToolbarSegmentedControl()
  }

  @IBAction func showAlert(_ sender: UIButton) {
    let alert = UIAlertController(title: "Hello", message: "Hello, Do iOS!", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    self.present(alert, animated: true, completion: nil)
  }
}


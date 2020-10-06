//
//  ViewController.swift
//  NetworkLayer
//
//  Created by Mohamed Korany Ali on 10/5/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var networkManger = NetworkManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    networkManger.getNewMovies(page: 1) { (movies, errorMsg) in
      print(movies)
      print(errorMsg)
    }
  }


}


//
//  ViewController.swift
//  FilesAndURLS
//
//  Created by Steven Hertz on 10/21/18.
//  Copyright © 2018 DevelopItSolutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        get the path to the place for files
        
        guard let thePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { fatalError() }
        
        
        
    }


}


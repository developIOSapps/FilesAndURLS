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

        // get the path to the place for files
        
        guard let thePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { fatalError() }
        
        let urlToWriteRead = thePath.appendingPathComponent("note1.txt")
        
        print(urlToWriteRead.absoluteString)
        
        
        
        // read file -  does not do it if not exists
        if FileManager.default.fileExists(atPath: urlToWriteRead.path) {  // need to use the path property to convert to string
            let fileContents = try! String(contentsOf: urlToWriteRead)
            print("This is the contents of the file\n\(fileContents)")
        } else {
            print("file does not yet exist")
        }
        
        
        
        
        
        // write file
        
        let textToSave =  "hello again"

        try! textToSave.write(to: urlToWriteRead, atomically: true, encoding: .utf8)
        
        
        
    }


}


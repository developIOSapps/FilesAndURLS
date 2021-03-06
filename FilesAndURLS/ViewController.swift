//
//  ViewController.swift
//  FilesAndURLS
//
//  Created by Steven Hertz on 10/21/18.
//  Copyright © 2018 DevelopItSolutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self

        // get the path to the place for files
        
        guard let thePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { fatalError() }
        
        let urlToWriteRead = thePath.appendingPathComponent("note3.txt")
        
        print(urlToWriteRead.absoluteString)
        
        
        
        // read file -  does not do it if not exists
//        if FileManager.default.fileExists(atPath: urlToWriteRead.path) {  // need to use the path property to convert to string
//            let fileContents = try! String(contentsOf: urlToWriteRead)
//            print("This is the contents of the file\n\(fileContents)")
//        } else {
//            print("file does not yet exist")
//        }
        
        // lets do the read in a do catcj loop and catch the 2 versions of the error
        
        do {
            let fileContents = try String(contentsOf: urlToWriteRead)
            print("This is the contents of the file\n\(fileContents)")
            textField.text = fileContents
        } catch let erx as NSError where erx.code == NSFileNoSuchFileError || erx.code == NSFileReadNoSuchFileError {
            print("file does not yet exist")
        } catch {
            
            print("some type of errror ", error.localizedDescription)
        }
        
        
        // write file
        
        let textToSave =  "hello again! 😀"

        try! textToSave.write(to: urlToWriteRead, atomically: true, encoding: .utf8)
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("editing started")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("did end editing")
    }
    
    
    


}


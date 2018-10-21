//
//  Message.swift
//  FilesAndURLS
//
//  Created by Steven Hertz on 10/21/18.
//  Copyright © 2018 DevelopItSolutions. All rights reserved.
//

import Foundation

protocol MessageProtocol {
    func getMessage() -> String
    func UpdateMessage(input: String)
}

final class Message: MessageProtocol {
    var text : String = ""
    
    func getMessage() -> String {
        return self.text
    }
    
    func UpdateMessage(input: String) {
        self.text = input
    }
    
}

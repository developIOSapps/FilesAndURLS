//
//  MessageDataSource.swift
//  FilesAndURLS
//
//  Created by Steven Hertz on 10/21/18.
//  Copyright © 2018 DevelopItSolutions. All rights reserved.
//

import Foundation

protocol MessageDataSourceProtocol {
    
    var message: Message { get }
    
    func getMessage() -> Error?
    
}

final class MessageDataSource: MessageDataSourceProtocol {
    
    private(set) var message: Message = Message()
    private let fileUrl: URL
    
    init(fileName: String) {
        guard let x = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { fatalError()}
        fileUrl = x.appendingPathComponent(fileName)
    }
    
    
    func getMessage() -> Error? {
        return nil
    }
    
    
    
}


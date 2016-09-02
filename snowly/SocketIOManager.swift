//
//  SocketIOManager.swift
//  snowly
//
//  Created by Linda Chang on 9/2/16.
//  Copyright © 2016 Snowly. All rights reserved.
//

import UIKit

class SocketIOManager: NSObject {
    static let sharedInstance = SocketIOManager()
    
    var socket = SocketIOClient(socketURL: NSURL(string: "http://10.38.35.196:3000")!)
    
    override init() {
        super.init()
    }
    
    func establishConnection() {
        socket.connect()
    }
    
    
    func closeConnection() {
        socket.disconnect()
    }
    
    func pingServer() {
        socket.emit("pingServer")
    }
    
    func pingClient() {
        socket.on("pingClient") { (dataArray, socketAck) -> Void in
            print("server has pinged")
            
        }
    }
}

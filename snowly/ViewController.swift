//
//  ViewController.swift
//  snowly
//
//  Created by Linda Chang on 8/30/16.
//  Copyright © 2016 Snowly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func pingServer(sender: AnyObject) {
        SocketIOManager.sharedInstance.pingServer()
    }

    @IBOutlet weak var serverLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        SocketIOManager.sharedInstance.pingClient()
        
//        var txt = SocketIOManager.sharedInstance.pingClient()
//        
//        self.serverLabel.text = txt
    }

}


//
//  CommoditiesViewController.swift
//  IsraelVirtualWater
//
//  Created by Raphael Astrow on 2/17/15.
//  Copyright (c) 2015 Raphael Astrow. All rights reserved.
//

import UIKit

class CommoditiesViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "http://128.237.100.110:4000/virtualWaterRequest?commodity=Apples&year=2012&color=Blue")
        let request = NSURLRequest(URL: url!)
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue())
            {(response, data, error) in
            println(NSString(data: data, encoding: NSUTF8StringEncoding))
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


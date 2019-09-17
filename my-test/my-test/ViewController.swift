//
//  ViewController.swift
//  my-test
//
//  Created by Rolando Murillo III on 9/17/19.
//  Copyright © 2019 Rolando Murillo III. All rights reserved.
//

import UIKit
import AFNetworking

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
            
            let manager = AFHTTPSessionManager()
            manager.get(
                "https://jsonplaceholder.typicode.com/todos/1",
                parameters: nil,
                success:
                {
                    (operation, responseObject) in
                    print(responseObject!)
                    
            },
                failure:
                {
                    (operation, error) in
                    print("Error: " + error.localizedDescription)
            })
    
        
    }


}


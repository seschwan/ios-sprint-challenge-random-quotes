//
//  ViewController.swift
//  Random-Quotes
//
//  Created by Seschwan on 12/13/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let qc = QuoteController()
        qc.fetchQuote { (quote, error) in
            if let error = error {
                NSLog("There was an error: \(error)")
            }
            
            guard let quote = quote else {
                return
            }
            
            print(quote)
        }
    }


}


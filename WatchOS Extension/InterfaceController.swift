//
//  InterfaceController.swift
//  WatchOS Extension
//
//  Created by Seschwan on 12/13/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var quoteLblWatch: WKInterfaceLabel!
    @IBOutlet weak var authorLblWatch: WKInterfaceLabel!
    
    let qc = QuoteController()

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        qc.fetchQuote { (quote, error) in
            if let error = error {
                NSLog("There was an error on watch fetching quote: \(error)")
                return
            }
            
            guard let quote = quote else {
                return
            }
            self.quoteLblWatch.setText("\"\(quote.quote)\"")
            self.authorLblWatch.setText("-\(quote.author)")
        }
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

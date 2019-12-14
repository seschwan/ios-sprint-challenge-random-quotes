//
//  TodayViewController.swift
//  Widget
//
//  Created by Seschwan on 12/13/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    
    @IBOutlet weak var quoteLbl: UILabel!
    @IBOutlet weak var authorLbl: UILabel!
    
    let quoteController = QuoteController()
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.extensionContext?.widgetLargestAvailableDisplayMode = .expanded
        
    }
    
    
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        quoteController.fetchQuote { (quote, error) in
            if let error = error {
                NSLog("There was an error getting quote on widget: \(error)")
                completionHandler(.noData)
            }
            
            guard let quote = quote else {
                completionHandler(.noData)
                return
            }
            self.updateViews(quote: quote)
            print(quote.quote, quote.author)
        }
        
        completionHandler(NCUpdateResult.newData)
    }
    
    func updateViews(quote: Quote) {
        quoteLbl.text = "\"\(quote.quote)\""
        authorLbl.text = "- \(quote.author)"
    }
    
}

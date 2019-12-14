//
//  QuoteController.swift
//  Random-Quotes
//
//  Created by Seschwan on 12/13/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import Foundation

class QuoteController {
    let baseURL = URL(string: "https://andruxnet-random-famous-quotes.p.mashape.com/")!
    let apiKey = "Zn6GslkyY9mshlvCHYSrczsmBUnSp1a5FqijsnbRDlvYCO175m"
    
    func fetchQuote(completion: @escaping (Quote?, Error?) -> Void) {
        var request = URLRequest(url: baseURL)
        request.setValue(apiKey, forHTTPHeaderField: "X-Mashape-Key")
        
        URLSession.shared.dataTask(with: request) { (data, _, error) in
            if let error = error {
                NSLog("There was an error with the URLRequest: \(error)")
                DispatchQueue.main.async {
                    completion(nil, error)
                }
                return
            }
            
            guard let data = data else { return }
            
            do {
                let quote = try JSONDecoder().decode([Quote].self, from: data).first
                DispatchQueue.main.async {
                    completion(quote, nil)
                }
            } catch {
                NSLog("There was an error Decoding data: \(error)")
                DispatchQueue.main.async {
                    completion(nil, error)                    
                }
                return
            }
            
            print("Hello")
        }.resume()
        
    }
}

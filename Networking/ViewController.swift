//
//  ViewController.swift
//  Networking
//
//  Created by 김재훈 on 2022/02/27.
//

import UIKit

class ViewController: UIViewController {

    let movieURL = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        parseJSON()
    }

    private func parseJSON() {
        guard let path = Bundle.main.path(forResource: "data", ofType: "json") else { return }

        let url = URL(fileURLWithPath: path)
        
        var result: Result?
        do {
            let jsonData = try Data(contentsOf: url)
            result = try JSONDecoder().decode(Result.self, from: jsonData)
            
            if let result = result {
                print(result)
            } else {
                print("fail to parse")
            }
            
        } catch {
            print("Error: \(error)")
        }
        
    }
}

struct Result: Codable {
    let data: [ResultItem]
}

struct ResultItem: Codable {
    let title: String
    let items: [String]
}

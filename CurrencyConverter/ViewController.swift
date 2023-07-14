//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by fulya akan on 11.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cadLabel: UILabel!
    @IBOutlet weak var chfLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var tryLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //api: bir sunucudan veri çekme
        //json: obje gösterme formatı
    }
    
    @IBAction func getRatesClicked(_ sender: Any) {
        
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=4a990ae1cc0ef5a920e4c7e9eeb1123c")
        
        let session = URLSession.shared
        
        //Closure
        let task = session.dataTask(with: url!) {(data, response, error) in
            if error != nil {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
            } else {
                
                if data != nil {
                    
                }
                
            }
                
        }
        
        task.resume()
        
    }
    
}


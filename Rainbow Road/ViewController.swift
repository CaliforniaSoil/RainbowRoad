//
//  ViewController.swift
//  Rainbow Road
//
//  Created by Admin on 11/5/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    
    @IBOutlet weak var RainbowView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
    extension ViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 6
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
            
                cell.backgroundColor = colors[indexPath.row]
                return cell
        }
    }




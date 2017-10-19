//
//  ColorsViewController.swift
//  Colors
//
//  Created by Kevin Fritz on 10/17/17.
//  Copyright © 2017 Kevin Fritz. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    struct colorsStruct {
        var colorString: String
        var colorCode: UIColor
    }
    
    var colors:[colorsStruct] = [colorsStruct(colorString: "red",colorCode: UIColor.red), colorsStruct(colorString: "orange", colorCode: UIColor.orange), colorsStruct(colorString: "yellow", colorCode: UIColor.yellow), colorsStruct(colorString: "green", colorCode: UIColor.green), colorsStruct(colorString: "blue", colorCode: UIColor.blue), colorsStruct(colorString: "purple", colorCode: UIColor.purple), colorsStruct(colorString: "brown", colorCode: UIColor.brown)                               ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row].colorString
        cell.backgroundColor = colors[indexPath.row].colorCode
        return cell
    }
    
}

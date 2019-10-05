//
//  colorsController.swift
//  Colors
//
//  Created by Ethan Cain on 10/4/19.
//  Copyright © 2019 Mizzou. All rights reserved.
//

import UIKit

class colorsController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var colorsTableView: UITableView!
    
    var colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple", "Brown"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorsTableView.dataSource = self
        colorsTableView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row]
        
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

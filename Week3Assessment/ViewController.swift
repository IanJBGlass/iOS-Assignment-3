//
//  ViewController.swift
//  Week3Assessment
//
//  Created by Ryan Brashear on 1/3/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as!TableViewCell
        let person = personArray[indexPath.row]
        cell.favThing.text = person.favoriteThing
        cell.Name.text = person.name
        cell.backgroundColor = person.favoriteColor
        
        return cell
    }
    
    
    @IBOutlet weak var TableView: UITableView!
    
    var personArray = [Person]()
    
    override func viewDidLoad() {
        var people1 = Person(name: "Jack", favoriteThing: "Beanstalks", favoriteColor: UIColor.yellow  )
        
        var people2 = Person(name: "Henry", favoriteThing: "Executions", favoriteColor: UIColor.red)
        
        var people3 = Person(name: "Depresto", favoriteThing: "Sad Magic", favoriteColor: UIColor.blue)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


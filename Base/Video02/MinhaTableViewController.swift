//
//  MinhaTableViewController.swift
//  Video02
//
//  Created by Mariela Andrade on 17/07/17.
//  Copyright © 2017 Mariela Andrade. All rights reserved.
//

import UIKit

class MinhaTableViewController: UITableViewController {
    
    
    var herois = [Personagens]()
    var detailViewController: DetalhesViewController? = nil
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        herois = [
            
            Personagens(nome: "Batman", editora: "DC"),
            Personagens(nome: "Homem Aranha", editora: "Marvel"),
            Personagens(nome: "Viuva Negra", editora: "Marvel"),
            Personagens(nome: "Mulher Maravilha", editora: "DC"),
            Personagens(nome: "SpiderGwen", editora: "Marvel"),
            Personagens(nome: "Tempestade", editora: "Marvel"),
            Personagens(nome: "Deadpool", editora: "Marvel")
        
        ]
        
        
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return herois.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let hero = herois[indexPath.row]
        cell.textLabel?.text = hero.nome
        cell.detailTextLabel?.text = hero.editora

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "Detail", sender: indexPath.row)
 
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Detail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let hero = herois[indexPath.row]
                let controller = (segue.destination) as! DetalhesViewController
          
                controller.detailHero = hero
                
            }
        }
    }


}

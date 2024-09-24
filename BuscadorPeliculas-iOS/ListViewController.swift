//
//  ViewController.swift
//  BuscadorPeliculas-iOS
//
//  Created by Mañanas on 24/9/24.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource {
   
    
    @IBOutlet weak var tableView: UITableView!
    
    var peliculasList: [Pelicula] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        
        PeliculasProvider.findPeliculasByName("Terminator", withResult: { results in
            self.peliculasList = results
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        })
        
       /* SuperHeroProvider.findSuperHeroesByName("Super", withResult: { results in
            self.superHeroList = results
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        })
        */
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculasList.count
    }
    
    /*func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        as! SuperHeroViewCell
        
        let superHero = superHeroList[indexPath.row]
        
        cell.render(superHero: superHero)
        
        return cell
    }*/
    


}


//
//  ViewController.swift
//  BuscadorPeliculas-iOS
//
//  Created by Mañanas on 24/9/24.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource {
   
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var imageViewPelicula: UIView!
    
    @IBOutlet weak var runtimeLabel: UITableView!
    
    var peliculasList: [Pelicula] = []
    var pelicula: Pelicula? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        tableView.dataSource = self
        
        PeliculasProvider.findPeliculasByName("Term&page=1", withResult: { results in
            self.peliculasList = results
            DispatchQueue.main.async {
                for itemPelicula in self.peliculasList {
                            PeliculasProvider.findPeliculasById(itemPelicula.imdbID) { result in
                                DispatchQueue.main.async {
                                    self.pelicula = result
                                    //DetailViewController.verDetallePelicula(self.pelicula!)
                                }
                            }
                        }
                
            
                
                self.tableView.reloadData()
            }
        })
        
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculasList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        as! PeliculasViewCell
        
        let pelicula = peliculasList[indexPath.row]
        
        cell.render(pelicula: pelicula)
        
        print(pelicula)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "detallePelicula"){
            print("SEGUE aqui")
            let viewController = segue.destination as! DetailViewController
            
            let indexPath = tableView.indexPathForSelectedRow!.row
            viewController.pelicula = peliculasList[indexPath]
        }
    }
    


}


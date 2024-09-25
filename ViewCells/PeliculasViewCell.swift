//
//  PeliculasViewCell.swift
//  BuscadorPeliculas-iOS
//
//  Created by Mañanas on 24/9/24.
//

import UIKit

class PeliculasViewCell: UITableViewCell {
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var runtimeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var yearPeliculaLabel: UILabel!
    
    func render(pelicula: Pelicula) {
        titleLabel.text = pelicula.Title
        posterImageView.loadFrom(url: pelicula.Poster)
        yearPeliculaLabel.text = pelicula.Year
        runtimeLabel.text = pelicula.Runtime ?? "NOtime"
        //posterImageView.loadFrom(url: pelicula.Poster)
    }


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}

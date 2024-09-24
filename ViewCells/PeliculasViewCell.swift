//
//  PeliculasViewCell.swift
//  BuscadorPeliculas-iOS
//
//  Created by Mañanas on 24/9/24.
//

import UIKit

class PeliculasViewCell: UITableViewCell {
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    func render(pelicula: Pelicula) {
        titleLabel.text = pelicula.title
        posterImageView.loadFrom(url: pelicula.poster.url)
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

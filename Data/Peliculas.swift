//
//  Peliculas.swift
//  BuscadorPeliculas-iOS
//
//  Created by Mañanas on 24/9/24.
//

import Foundation

struct Peliculas: Codable{
    let Search: [Pelicula]
    let totalResults: String
    let Response: String
}

struct Pelicula: Codable{
    let title: String
    let year: String
    let poster: Image
    
}

struct Image: Codable{
    let url: String
}


/*
 
 "Title": "Batman Begins",
             "Year": "2005",
             "imdbID": "tt0372784",
             "Type": "movie",
             "Poster": "https://m.media-amazon.com/images/M/MV5BOTY4YjI2N2MtYmFlMC00ZjcyLTg3YjEtMDQyM2ZjYzQ5YWFkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg"
         },
 
Título
Año
Poster
Sinopsis
Duración
Director
Género
País
*/

//
//  Peliculas.swift
//  BuscadorPeliculas-iOS
//
//  Created by Mañanas on 24/9/24.
//

import Foundation

struct PeliculasResponse: Codable{
    let Search: [Pelicula]
    let totalResults: String?
    let Response: String?
    let Error: String?
}

struct Pelicula: Codable{
    let Title: String
    let Year: String
    let Poster: String
    let imdbID: String
    
    let Plot: String?
    let Genre: String?
    let Runtime: String?
    let Director: String?
    let Country: String?
    
}

struct Image: Codable{
    let url: String
}



/*
"Title": "Terminator Salvation",
    "Year": "2009",
    "Rated": "PG-13",
    "Released": "21 May 2009",
    "Runtime": "115 min",
    "Genre": "Action, Adventure, Sci-Fi",
    "Director": "McG",
    "Writer": "John Brancato, Michael Ferris",
    "Actors": "Christian Bale, Sam Worthington, Anton Yelchin",
    "Plot": "It focuses on the war between Skynet's machine network and humanity, as the remnants of the world's militaries have united to form the Resistance to fight against Skynet.",
    "Language": "English, Italian",
    "Country": "United States, Germany",
    "Awards": "2 wins & 14 nominations",
    "Poster": "https://m.media-amazon.com/images/M/MV5BODBlOTJhZjItMGRmYS00YzM1LWFmZTktOTJmNDMyZTBjMjBkXkEyXkFqcGdeQXVyMjMwNDgzNjc@._V1_SX300.jpg",
    "Ratings": [
        {
            "Source": "Internet Movie Database",
            "Value": "6.5/10"
        },
        {
            "Source": "Rotten Tomatoes",
            "Value": "33%"
        },
        {
            "Source": "Metacritic",
            "Value": "49/100"
        }
    ],
    "Metascore": "49",
    "imdbRating": "6.5",
    "imdbVotes": "380,748",
    "imdbID": "tt0438488",
    "Type": "movie",
    "DVD": "N/A",
    "BoxOffice": "$125,322,469",
    "Production": "N/A",
    "Website": "N/A",
    "Response": "True"
 */

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

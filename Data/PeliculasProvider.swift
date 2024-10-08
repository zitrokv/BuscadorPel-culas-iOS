//
//  PeliculasProvider.swift
//  BuscadorPeliculas-iOS
//
//  Created by Mañanas on 24/9/24.
//

import Foundation

class PeliculasProvider {
    
    static func findPeliculasByName(_ name: String, withResult: @escaping
                                    ([Pelicula]) -> Void) {
        guard let url = URL(string: "\(Constants.BASE_URL)&s=\(name)") else {
            print("URL not valid")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                // Handle the error
                print("Error: \(error.localizedDescription)")
                return
            } else if let data = data {
                // Process the data
                print("data: \(data)")
                //if JSONDecoder().decode(Pelicula.self, from: data)
                let result = try! JSONDecoder().decode(PeliculasResponse.self, from: data)
                print("result: \(result)")
                withResult(result.Search)
            }
        }
        task.resume()
    }
    
    static func findPeliculasById(_ imdbID: String, withResult: @escaping
                                    (Pelicula) -> Void) {
        guard let url = URL(string: "\(Constants.BASE_URL)&i=\(imdbID)") else {
            print("URL not valid")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                // Handle the error
                print("Error: \(error.localizedDescription)")
                return
            } else if let data = data {
                // Process the data
                print("data: \(data)")
                //if JSONDecoder().decode(Pelicula.self, from: data)
                let result = try! JSONDecoder().decode(Pelicula.self, from: data)
                print("result: \(result)")
                withResult(result)
            }
        }
        task.resume()
    }
    
}

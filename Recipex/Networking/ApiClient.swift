//
//  ApiClient.swift
//  Recipex
//
//  Created by Saidac Alexandru on 24.01.2023.
//

import Foundation
import UIKit

class Drinks{
    struct Returned: Codable{
        var drinks: [Drink]
    }
    struct Drink: Codable{
        var strDrink = ""
    }
    let urlString = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Alcoholic"
    var drinkArray: [Drink] = []
    
    func getData(completed: @escaping ()->()){
        print("We accessed the url")
        guard let url = URL(string: urlString) else{
            print("Could not convert to URL")
            completed()
            return
        }
        
        let session = URLSession.shared
        let task = session.dataTask(with: url) { data, response, error in
            if let error = error{
                print("Error 1\(error.localizedDescription)")
            }
            
            do{
                let dataFile = try JSONDecoder().decode(Returned.self, from: data!)
                self.drinkArray = dataFile.drinks
            } catch{
                print("Error2\(error.localizedDescription)")
            }
            completed()
        }
        task.resume()
    }
}

//
//  ViewController.swift
//  Pokeball
//
//  Created by rs on 26/12/19.
//  Copyright © 2019 rs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var ability: UILabel!
    @IBOutlet weak var type: UILabel!
    
    
    let pokemons: [UIImage] = [#imageLiteral(resourceName: "Charizard"), #imageLiteral(resourceName: "Raichu"), #imageLiteral(resourceName: "Pikachu"), #imageLiteral(resourceName: "Bulbasaur"), #imageLiteral(resourceName: "Squirtle"), #imageLiteral(resourceName: "Sandslash"), #imageLiteral(resourceName: "Golduck"), #imageLiteral(resourceName: "Sandshrew"), #imageLiteral(resourceName: "Blastoise"), #imageLiteral(resourceName: "Pidgeot"), #imageLiteral(resourceName: "Pidgey"), #imageLiteral(resourceName: "Butterfree")]
    let names = ["Charizard", "Raichu", "Pikachu", "Bulbasaur", "Squirtle", "Sandslash", "Golduck", "Sandshrew", "Blastoise", "Pidgeot", "Pidgey", "Butterfree"]
    let types = ["Fire,Flying", "Electric", "Electric", "Grass,Poison", "Water", "Ground", "Water", "Ground", "Water", "Flying", "Flying", "Bug,Flying"]
    let heights = ["5ft 07in", "2ft 07in", "1ft 04in", "2ft 04in", "1ft 08in", "3ft 03in", "5ft 07in", "2ft 00in", "5ft 03in", "4ft 11in", "1ft 00in", "3ft 07in"]
    let categories = ["Flame", "Mouse", "Mouse", "Seed", "Tiny Turtle", "Mouse", "Duck", "Mouse", "Shellfish", "Bird", "Tiny Bird", "Butterfly"]
    let abilities = ["Blaze", "Static", "Static", "Overgrow", "Torrent", "Sand Veil", "Damp, Cloud Nine", "Sand Veil", "Torrent", "Keen Eye, Tangled Feet", "Keen Eye, Tangled Feet", "Compound Eyes"]
    
    var i = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showPokemon(_ sender: UIButton) {
        if i==names.count {
            printPokeball()
        }
        else {
            pokemonPrint()
        }
    }
    @IBAction func closeBall(_ sender: UIButton) {
        printPokeball()
    }
    
    @IBAction func nextPokemon(_ sender: UIButton) {
        if i == 0 {
            pokemonPrint()
        }
        else if i==names.count {
            printPokeball()
        }
        else {
            pokemonPrint()
        }
    }
    
    @IBAction func previousPokemon(_ sender: UIButton) {
        i-=2
        if i<0 {
            printPokeball()
        }
        else{
            pokemonPrint()
        }
    }
    
    func pokemonPrint() {
        imageView.image = pokemons[i]
        name.text = names[i].uppercased()
        height.text = "Height: \(heights[i])"
        category.text = "Category: \(categories[i])"
        ability.text = "Ability: \(abilities[i])"
        type.text = "Type: \(types[i])"
        i+=1
    }
    
    func printPokeball() {
        imageView.image = #imageLiteral(resourceName: "Pokeball")
        name.text = ""
        i = 0
        height.text = ""
        category.text = ""
        ability.text = ""
        type.text = ""
    }
    
}


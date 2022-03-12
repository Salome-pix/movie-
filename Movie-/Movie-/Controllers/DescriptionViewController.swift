//
//  DescriptionViewController.swift
//  Movie-
//
//  Created by Mcbook Pro on 07.03.22.
//

import UIKit

protocol sendButtonStateDelegate{
    func makeFavorite(buttonCurentState : Bool, index : Int)
        
}

class DescriptionViewController: UIViewController {
    
    var buttonClick = false
    var dataModel = movies
    var index : Int?
    
    var deleate : sendButtonStateDelegate?
    
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var descriptionImage: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    
    
    @IBOutlet weak var movieReliase: UILabel!
    
    @IBOutlet weak var mocieCountry: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         if movies[index!].isFavorite == true{
            favoriteButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        }
        
    }
    
    @IBAction func makeFavoriteButton(_ sender: UIButton) {
        
        if buttonClick == false{
        sender.setImage(UIImage(systemName: "star.fill"), for: .normal)
            buttonClick = true
            self.deleate?.makeFavorite(buttonCurentState:buttonClick ,index: index!)
            
            UserDefaults.standard.set(movies[index!].id, forKey: movies[index!].name)
        
        }else{
            sender.setImage(UIImage(systemName: "star"), for: .normal)
            buttonClick = false
            self.deleate?.makeFavorite(buttonCurentState:buttonClick,index: index!)
        }
    }
    
}

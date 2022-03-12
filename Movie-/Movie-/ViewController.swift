//
//  ViewController.swift
//  Movie-
//
//  Created by Mcbook Pro on 07.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    var model = movies

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        collectionView.register(UINib(nibName: "MovieCell", bundle: nil), forCellWithReuseIdentifier: "MovieCell")
    
    }
}

extension ViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath) as! MovieCell
        let getObject = model[indexPath.row]
        cell.movieImage.image = getObject.image
        cell.movieName.text = getObject.name
        
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300 )
    }
}

extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let descriptionVC = storyboard.instantiateViewController(withIdentifier: "DescriptionViewController") as! DescriptionViewController
        let dataForFill = model[indexPath.row]
        descriptionVC.index = indexPath.row
        descriptionVC.deleate = self
        
        
        
       present(descriptionVC, animated: true)
        
    }
}

extension ViewController : sendButtonStateDelegate{
    func makeFavorite(buttonCurentState: Bool, index: Int) {
        
        movies[index].isFavorite = buttonCurentState
        
    }
}
 

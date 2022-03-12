//
//  FavoriteViewController.swift
//  Movie-
//
//  Created by Mcbook Pro on 07.03.22.
//

import UIKit

class FavoriteViewController: UIViewController {

    @IBOutlet weak var favoriteTableView: UITableView!
    
    var fillTheTable = [Movie]()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        movies.forEach { movie in
            let name = movie.name
            let savedData = UserDefaults.standard.integer(forKey: name)
            if movie.isFavorite == true && movie.id == savedData{
                fillTheTable.append(movie)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        favoriteTableView.dataSource = self
        favoriteTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
        
    }
}

extension FavoriteViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fillTheTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        let dataFrorCell = fillTheTable[indexPath.row]
    

        cell.favoritedImage.image = dataFrorCell.image
          
       
        return cell
    }
    
    
}


//
//  ViewController.swift
//  Exercise01
//
//  Created by Nishtha Ashokbhai Patel on 2022-11-21.

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // define an array of values ..which you want to be displayed
    let movieList = ["VampireDiaries", "GangubaiKathiawadi", "BhoolBhalaiyaa", "FRIENDS","Lucifer"]
    let releaseDate = ["2009", "2022", "2007", "1994","2016"]
    let images = ["VampireDiaries", "GangubaiKathiawadi", "BhoolBhalaiyaa", "FRIENDS","Lucifer"]
    let timeMovie = ["41–49 min","2h 34m","2h 39m","20–22 min","42–65 min"]
    let nameDirector = ["Chris Grismer","Sanjay Leela Bhansali","Priyadarshan","James Burrows","Len Wiseman"]
    
    // outlets
    override func viewDidLoad()
{
        super.viewDidLoad()
        // Do any additional setup after loading the view.
}

    // returns how many rows in the table
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
{
     return movieList.count
}
    // end func tableview
     
    // returns the cell
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
{
    let tempCell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        tempCell.labelMovie.text = movieList[indexPath.row]
        tempCell.labelRelease.text = releaseDate[indexPath.row]
        tempCell.ImageMovie.image = UIImage(named: images[indexPath.row] + ".jpg" )
       
    
        return tempCell
} // end func tableView
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC:MoviesViewController = self.storyboard?.instantiateViewController(withIdentifier: "MoviesViewController") as! MoviesViewController
       // assign the values to the local variable declared in ProductDetailViewController Class
        detailVC.movieName = movieList[indexPath.row]
        detailVC.releaseDate = releaseDate[indexPath.row]
        detailVC.movieImage = UIImage(named: images[indexPath.row] + ".jpg" )!
        detailVC.movieTime = timeMovie[indexPath.row]
        detailVC.movieDirector = nameDirector[indexPath.row]
        
        // make it navigate to ProductDetailViewController
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
} // end class


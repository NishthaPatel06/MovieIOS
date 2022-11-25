//
//  MoviesViewController.swift
//  Exercise01
//
//  Created by Nishtha Ashokbhai Patel on 2022-11-21.
//

import UIKit

class MoviesViewController: UIViewController {

    @IBOutlet weak var ImageMovie: UIImageView!
    
    @IBOutlet weak var labelMovie: UILabel!
    
    @IBOutlet weak var LabelRelease: UILabel!
    
    @IBOutlet weak var labelDirector: UILabel!
    
    @IBOutlet weak var labelTime: UILabel!
    
    var movieName:String!  // state the movie name
    var releaseDate:String!  // state the release date
    var movieImage:UIImage! //state the movie image
    var movieTime:String! // state the run time of the movie
    var movieDirector:String! //Director Name

    override func viewDidLoad() {
        super.viewDidLoad()
        labelMovie.text = movieName
        LabelRelease.text = releaseDate
        ImageMovie.image = movieImage
        labelTime.text = movieTime
        labelDirector.text = movieDirector
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

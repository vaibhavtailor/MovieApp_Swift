//
//  MovieDetailsViewController.swift
//  Vaibhav-Tailor_COMP2125-Sec003_Lab04-Ex01
//

import UIKit

class MovieDetailsViewController: UIViewController {

    //Instantiating Outlets
    @IBOutlet weak var moviePosterImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    @IBOutlet weak var movieDirectorLabel: UILabel!
    
    @IBOutlet weak var movieRuntimeLabel: UILabel!
    
    //Defining some variables to get data from Table View Controller
    var movieName: String = ""
    var movieYear: String = ""
    var movieDirector: String = ""
    var movieRuntime: String = ""
    var moviePoster: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //Loading data from Table View Controller
        movieNameLabel.text = movieName
        movieYearLabel.text = movieYear
        movieDirectorLabel.text = movieDirector
        movieRuntimeLabel.text = movieRuntime
        moviePosterImageView.image = moviePoster
    }
}

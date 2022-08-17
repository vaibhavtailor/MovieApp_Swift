//
//  ViewController.swift
//  Vaibhav-Tailor_COMP2125-Sec003_Lab04-Ex01
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //Instantiating Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //Defining an array to store movie information
    struct Movie {
        let name: String
        let year: String
        let poster: String
        let director: String
        let runtime: String
    }
    
    //Populating array with movie objects
    var movies: [Movie] = [
        Movie(name: "Ambulance", year: "2022", poster: "ambulance", director: "Michael Bay", runtime: "136m"),
        Movie(name: "TopGun", year: "2022", poster: "topgun", director: "Joseph Kosinski", runtime: "131m"),
        Movie(name: "Avengers End Game", year: "2019", poster: "avengersendgame", director: "Anthony Russo", runtime: "182m"),
        Movie(name: "Fast and Furious 7", year: "2015", poster: "FF7", director: "James Wan", runtime: "140m"),
        Movie(name: "Iron Man 3", year: "2013", poster: "ironman3", director: "Shane Black", runtime: "130m")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //adding movies data to table
        tableView.dataSource = self
        tableView.delegate = self
    }

    //Returns total number of rows in table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    //Returns total number of cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Instantiating variables to populate movie data in each row
        let movie = movies[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieTableViewCell
        cell.movieNameLabel.text = movie.name
        cell.movieYearLabel.text = movie.year
        cell.moviePosterImageView.image = UIImage(named: movie.poster)
        return cell
    }

    //Setts the height of each row
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190
    }
    
    //Takes to the next view controller to display the details of the selected movie
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Instantiating Movie Details View Controller using Storyboard ID
        let outputVC: MovieDetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "MovieDetailsViewController") as! MovieDetailsViewController
        
        //Transferring data of objects to Movie Details View Controller
        let movie = movies[indexPath.row]
        outputVC.movieName = movie.name
        outputVC.movieYear = movie.year
        outputVC.movieDirector = movie.director
        outputVC.movieRuntime = movie.runtime
        outputVC.moviePoster = UIImage(named: movie.poster)
        
        //Navigating to Movie Details View Controller
        self.navigationController?.pushViewController(outputVC, animated: true)
    }
    
}


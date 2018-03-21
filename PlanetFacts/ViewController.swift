//
//  ViewController.swift
//  PlanetFacts
//
//  Created by Travis  on 2/4/18.
//  Copyright © 2018 JB Engineering. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetFactLabel: UILabel!
    @IBOutlet weak var newFactButton: UIButton!

    let planetImageArray: [UIImage] = [
        UIImage(named: "Mercury.jpg")!,
        UIImage(named: "Venus.jpg")!,
        UIImage(named: "Earth.jpg")!,
        UIImage(named: "Mars.jpg")!,
        UIImage(named: "Jupiter.jpg")!,
        UIImage(named: "Saturn.jpg")!,
        UIImage(named: "Uranus.jpg")!,
        UIImage(named: "Neptune.jpg")!,
        UIImage(named: "Pluto.jpg")!

    ]

    let planetFactsArray = ["Mercury",
                            "Venus",
                            "Earth",
                            "Mars",
                            "Jupiter",
                            "Saturn",
                            "Uranus",
                            "Neptune",
                            "Pluto"
    ]


    //var i = 0
    var currentImage = -1
    var currentFact = -1



    override func viewDidLoad() {
        super.viewDidLoad()
        //planetImage.image = factProvider.randomFact()
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "asteroid-shower.jpg")!)
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "farAwaySun.jpg")
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func nextFact() {
        currentFact = currentFact + 1
        if currentFact >= planetFactsArray.count {
            currentFact = 0
        }
        planetFactLabel.text = planetFactsArray[currentFact]

    }

    func nextImage() {

        currentImage = currentImage + 1
        if currentImage >= planetImageArray.count {
            currentImage = 0
        }
        planetImage.image = planetImageArray[currentImage]


    }




    @IBAction func touchButton (sender: AnyObject) {
        nextImage()
        nextFact()

//        let currentIndex = planetImageArray.index(of: planetImage.image ?? UIImage()) ?? -1
//        var nextIndex = currentIndex+1
//        nextIndex = planetImageArray.indices.contains(nextIndex) ? nextIndex : 0
//        planetImage.image = planetImageArray[nextIndex]

//        for element in 0..<planetImageArray.count {
//            planetImage.image = (planetImageArray[element])
//        }

//        if(index < planetImageArray.count){
//            index = index + 1
//            planetImage.image = planetImageArray[index]
//        }

        



   }

}


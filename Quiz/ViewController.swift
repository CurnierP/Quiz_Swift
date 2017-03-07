//
//  ViewController.swift
//  Quiz
//
//  Created by CURNIER Pierre on 06/03/2017.
//  Copyright © 2017 CURNIER Pierre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.black
        let titre = UILabel(frame: CGRect(x: 40, y: 60, width: 343, height: 75))

        titre.text = "FootballQuiz"
        titre.textAlignment = .center
        titre.textColor = UIColor.white
        
        let play = UIButton(frame: CGRect(x: 40, y: 300, width: 343, height: 50))
        play.setTitle("Jouer", for: UIControlState.normal)
        play.setTitleColor(UIColor.black, for: UIControlState.normal)
        play.addTarget(self, action: #selector(jouer), for: .touchUpInside)
        play.backgroundColor = UIColor.white
        
        let classement = UIButton(frame: CGRect(x: 40, y: 400, width: 343, height: 50))
        classement.setTitle("Classement", for: UIControlState.normal)
        classement.setTitleColor(UIColor.black, for: UIControlState.normal)
        classement.addTarget(self, action: #selector(lader), for: .touchUpInside)
        classement.backgroundColor = UIColor.white
        
        self.view.addSubview(play)
        self.view.addSubview(classement)
        self.view.addSubview(titre)
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func jouer (sender: UIButton!){
        
        let pageQuestion = QuestionViewController()
        
        self.navigationController?.pushViewController(pageQuestion, animated: true)
        
    }
    func lader (sender: UIButton!){
        
        let ranking = RankingViewController()
        
        self.navigationController?.pushViewController(ranking, animated: true)
    }

}


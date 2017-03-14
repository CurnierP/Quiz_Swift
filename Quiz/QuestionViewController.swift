//
//  QuestionViewController.swift
//  Quiz
//
//  Created by CURNIER Pierre on 06/03/2017.
//  Copyright © 2017 CURNIER Pierre. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController, UIAlertViewDelegate {
    
    
    var arrayScore: [Int] = []
    var score:Int = 0
    
    let question = UILabel(frame: CGRect(x: 40,y: 100,width: 343, height: 75))
    let rep1 = UIButton(frame: CGRect(x: 40,y: 250,width: 343, height: 50))
    let rep2 = UIButton(frame: CGRect(x: 40, y: 350, width: 343, height: 50))
    let rep3 = UIButton(frame: CGRect(x:40, y: 450, width: 343, height: 50))
    let rep4 = UIButton(frame: CGRect(x: 40, y: 550, width: 343, height: 50))
    
    let time = UILabel(frame: CGRect(x: 190, y: 190, width: 343, height: 25))
    let Score = UILabel(frame: CGRect(x: 150, y: 60, width: 343, height: 50))
    
    var tempsRestant = 10
    
    var reponseCorrecte: String = ""
    
    var myTime: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Recupere la largeur de l'ecran et la longueur
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
       time.textColor = UIColor.white
        

        self.navigationItem.title = "Question:"
       // Do any additional setup after loading the view.
        
        myTime = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(QuestionViewController.timer), userInfo: nil, repeats: true)

        randomQuestion()
        Score.textColor = UIColor.white
        
        rep1.addTarget(self, action: #selector(reponse1), for: .touchUpInside)
        rep2.addTarget(self, action: #selector(reponse2), for: .touchUpInside)
        rep3.addTarget(self, action: #selector(reponse3), for: .touchUpInside)
        rep4.addTarget(self, action: #selector(reponse4), for: .touchUpInside)

        self.view.addSubview(rep1)
        self.view.addSubview(rep2)
        self.view.addSubview(rep3)
        self.view.addSubview(rep4)
        
        self.view.addSubview(time)
        
        self.view.addSubview(question)
        
        self.view.addSubview(Score)

        view.backgroundColor = UIColor.black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    //Timer
    func timer(){
        
        tempsRestant -= 1
        time.text = "\(tempsRestant)"
        
        
    if tempsRestant == 0
        {
            myTime.invalidate()
            var timeOut: UIAlertController = UIAlertController()
            timeOut.title = "Temps écoulé"
            timeOut.message = "Vous n'avez plus de temps !!!"
            timeOut.addAction(timeAlert)
            
            // Present Alert Controller
            self.present(timeOut, animated: true, completion: nil)
            
            time.text = "0"
            
            tempsRestant = 10
            
            
            timer()
            
            randomQuestion()
            
            score = 0
            
        }
        
    }
    
    //Question random
    func randomQuestion(){
        
        var randomNumber = arc4random() % 4
        randomNumber += 1
        
        switch randomNumber {
        case 1:
            
            question.text = "Qui a gagné la coupe du monde en 2010 ?"
            question.textAlignment = .center
            question.textColor = UIColor.white
            
            rep1.setTitle("Espagne", for: UIControlState.normal)
            rep1.setTitleColor(UIColor.black, for: .normal)
            rep1.backgroundColor = UIColor.white
            
            
            rep2.setTitle("L'Allemagne", for: UIControlState.normal)
            rep2.setTitleColor(UIColor.black, for: .normal)
            rep2.backgroundColor = UIColor.white
            
            
            rep3.setTitle("La France", for: UIControlState.normal)
            rep3.setTitleColor(UIColor.black, for: UIControlState.normal)
            rep3.backgroundColor = UIColor.white
            
            
            rep4.setTitle("La Belgique", for: UIControlState.normal)
            rep4.setTitleColor(UIColor.black, for: .normal)
            rep4.backgroundColor = UIColor.white
            
            reponseCorrecte = "1"
            
            break
            
        case 2:
            
            question.text = "Qui est le ballon d'or en 2002?"
            question.textAlignment = .center
            question.textColor = UIColor.white
            
            rep1.setTitle("Ronaldo", for: UIControlState.normal)
            rep1.setTitleColor(UIColor.black, for: .normal)
            rep1.backgroundColor = UIColor.white
            
            
            rep2.setTitle("Zidane", for: UIControlState.normal)
            rep2.setTitleColor(UIColor.black, for: .normal)
            rep2.backgroundColor = UIColor.white
            
            
            rep3.setTitle("Raul", for: UIControlState.normal)
            rep3.setTitleColor(UIColor.black, for: UIControlState.normal)
            rep3.backgroundColor = UIColor.white
            
            
            rep4.setTitle("Figo", for: UIControlState.normal)
            rep4.setTitleColor(UIColor.black, for: .normal)
            rep4.backgroundColor = UIColor.white
            
            reponseCorrecte = "1"
            
            break
            
        case 3:
            
            question.text = "Qui a la coupe d'europe en 2000 ?"
            question.textAlignment = .center
            question.textColor = UIColor.white
            
            rep1.setTitle("Les Pays-Bas", for: UIControlState.normal)
            rep1.setTitleColor(UIColor.black, for: .normal)
            rep1.backgroundColor = UIColor.white
            
            
            rep2.setTitle("le Portugal", for: UIControlState.normal)
            rep2.setTitleColor(UIColor.black, for: .normal)
            rep2.backgroundColor = UIColor.white
            
            
            rep3.setTitle("La France", for: UIControlState.normal)
            rep3.setTitleColor(UIColor.black, for: UIControlState.normal)
            rep3.backgroundColor = UIColor.white
            
            
            rep4.setTitle("L'Italie", for: UIControlState.normal)
            rep4.setTitleColor(UIColor.black, for: .normal)
            rep4.backgroundColor = UIColor.white
            
            reponseCorrecte = "3"
            
            
            break
            
        case 4:
            
            question.text = "Qui a gagné la LDC en 2006 ?"
            question.textAlignment = .center
            question.textColor = UIColor.white
            
            rep1.setTitle("Milan AC", for: UIControlState.normal)
            rep1.setTitleColor(UIColor.black, for: .normal)
            rep1.backgroundColor = UIColor.white
            
            
            rep2.setTitle("Real Madrid", for: UIControlState.normal)
            rep2.setTitleColor(UIColor.black, for: .normal)
            rep2.backgroundColor = UIColor.white
            
            
            rep3.setTitle("Manchester United", for: UIControlState.normal)
            rep3.setTitleColor(UIColor.black, for: UIControlState.normal)
            rep3.backgroundColor = UIColor.white
            
            
            rep4.setTitle("Fc Barcelone", for: UIControlState.normal)
            rep4.setTitleColor(UIColor.black, for: .normal)
            rep4.backgroundColor = UIColor.white
            
            reponseCorrecte = "4"
            
            break
            
        default:
            break
        }
    }
    
    //Fonction pour calculer le score de l'utilisateur
    func calculScore(){
    
        var scoreTotal: Int = 0
        
        arrayScore.append(score)
        
        for score in arrayScore
        {
            scoreTotal += score
            
            Score.text = "Score: \(scoreTotal)"
        }
    }
    
    //Action des 4 boutons
    func reponse1 (sender: UIButton!){
        
        
        if reponseCorrecte == "1"
        {
            
            score = tempsRestant + 10
            
            var bon:UIAlertController = UIAlertController()
            bon.title = "Bonne réponse"
            bon.message = "Vous avez trouvé la bonne réponse et vous avez marqué \(score) points"
            bon.addAction(goodReponse)
            
            // Present Alert Controller
            self.present(bon, animated: true, completion: nil)
            
            calculScore()
            
            randomQuestion()
            
            tempsRestant = 10
            
            timer()
            
        }else{
            
            rep1.backgroundColor = UIColor.red
            var mauvais:UIAlertController = UIAlertController()
            mauvais.title = "Mauvaise réponse"
            mauvais.message = "Vous n'avez pas trouvé la bonne réponse"
            mauvais.addAction(wrongReponse)
            
            self.present(mauvais, animated: true, completion: nil)
            randomQuestion()
            
            tempsRestant = 10
            
            timer()
            
        }

    }

    func reponse2 (sender: UIButton!){
      
        
        
        if reponseCorrecte == "2"
        {
            score = tempsRestant + 10
            
            var bon:UIAlertController = UIAlertController()
            bon.title = "Bonne réponse"
            bon.message = "Vous avez trouvé la bonne réponse et vous avez marqué \(score) points"
            bon.addAction(goodReponse)
            
            // Present Alert Controller
            self.present(bon, animated: true, completion: nil)
            
            calculScore()
            
            randomQuestion()
            
            tempsRestant = 10
            
            timer()
            
        }else{
            myTime.invalidate()
            var mauvais:UIAlertController = UIAlertController()
            mauvais.title = "Mauvaise réponse"
            mauvais.message = "Vous n'avez pas trouvé la bonne réponse"
            mauvais.addAction(wrongReponse)
            
            self.present(mauvais, animated: true, completion: nil)
            
            tempsRestant = 10
            
            timer()

        }

        
    }
    
    func reponse3 (sender: UIButton!){
        if reponseCorrecte == "3"
        {
            score = tempsRestant + 10
            
            var bon:UIAlertController = UIAlertController()
            bon.title = "Bonne réponse"
            bon.message = "Vous avez trouvé la bonne réponse et vous avez marqué \(score) points"
            bon.addAction(goodReponse)
            
            // Present Alert Controller
            self.present(bon, animated: true, completion: nil)
            
            calculScore()
            
            randomQuestion()
            
            tempsRestant = 10
            
            timer()
            
           }else{
            
            var mauvais:UIAlertController = UIAlertController()
            mauvais.title = "Mauvaise réponse"
            mauvais.message = "Vous n'avez pas trouvé la bonne réponse"
            mauvais.addAction(wrongReponse)
            
            self.present(mauvais, animated: true, completion: nil)
            
            randomQuestion()
            
            
            tempsRestant = 10
            
            timer()
        }

       
    }
    
    func reponse4 (sender: UIButton!){

        score = tempsRestant + 10
        
        if reponseCorrecte == "4"
        {
            var bon:UIAlertController = UIAlertController()
            bon.title = "Bonne réponse"
            bon.message = "Vous avez trouvé la bonne réponse et vous avez marqué \(score) points"
            bon.addAction(goodReponse)
            
            // Present Alert Controller
            self.present(bon, animated: true, completion: nil)
            randomQuestion()
            calculScore()
            
            tempsRestant = 10
            
            timer()

        }else{
            
            var mauvais:UIAlertController = UIAlertController()
            mauvais.title = "Mauvaise réponse"
            mauvais.message = "Vous n'avez pas trouvé la bonne réponse"
            mauvais.addAction(wrongReponse)
            
            self.present(mauvais, animated: true, completion: nil)
            
            randomQuestion()
            
            
            tempsRestant = 10
            
            timer()
         }
    }
    
    let timeAlert = UIAlertAction(title: "OK", style: .default){ (action) -> Void in
      
    }

    let goodReponse = UIAlertAction(title: "OK", style: .default){ (action) -> Void in
  
    }
    let wrongReponse = UIAlertAction(title: "OK", style: .default){ (action) -> Void in
       
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

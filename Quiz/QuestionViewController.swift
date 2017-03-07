//
//  QuestionViewController.swift
//  Quiz
//
//  Created by CURNIER Pierre on 06/03/2017.
//  Copyright © 2017 CURNIER Pierre. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    let question = UILabel(frame: CGRect(x: 40,y: 60,width: 343, height: 75))
    let rep1 = UIButton(frame: CGRect(x: 40,y: 200,width: 343, height: 50))
    let rep2 = UIButton(frame: CGRect(x: 40, y: 300, width: 343, height: 50))
    let rep3 = UIButton(frame: CGRect(x:40, y: 400, width: 343, height: 50))
    let rep4 = UIButton(frame: CGRect(x: 40, y: 500, width: 343, height: 50))
    
    var reponseCorrecte: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Recupere la largeur de l'ecran et la longueur
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        

        self.navigationItem.title = "Question:"
       // Do any additional setup after loading the view.
        
        randomQuestion()
        
       rep1.addTarget(self, action: #selector(reponse1), for: .touchUpInside)
       rep2.addTarget(self, action: #selector(reponse2), for: .touchUpInside)
       rep3.addTarget(self, action: #selector(reponse3), for: .touchUpInside)
       rep4.addTarget(self, action: #selector(reponse4), for: .touchUpInside)

        self.view.addSubview(rep1)
        self.view.addSubview(rep2)
        self.view.addSubview(rep3)
        self.view.addSubview(rep4)
        
        self.view.addSubview(question)

        view.backgroundColor = UIColor.black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
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
            
            
            rep4.setTitle("L'Italie", for: UIControlState.normal)
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
            
            
            rep2.setTitle("L'Angleterre", for: UIControlState.normal)
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
    
    func reponse1 (sender: UIButton!){
        
        if reponseCorrecte == "1"
        {
          var alert:UIAlertView = UIAlertView(title: "Bonne Réponse", message: "Vous avez trouvé la bonne réponse !!!",delegate: self, cancelButtonTitle: "OK")
            
            alert.show()
            
        }else{
            
            var alert:UIAlertView = UIAlertView(title: "Mauvaise Réponse", message: "C'est pas la bonne réponse !!!",delegate: self, cancelButtonTitle: "OK")
            
            alert.show()
        }

    }

    func reponse2 (sender: UIButton!){
        
        if reponseCorrecte == "2"
        {
            var alert:UIAlertView = UIAlertView(title: "Bonne Réponse", message: "Vous avez trouvé la bonne réponse !!!",delegate: self, cancelButtonTitle: "OK")
            
            alert.show()
        }else{
            
            var alert:UIAlertView = UIAlertView(title: "Mauvaise Réponse", message: "C'est pas la bonne réponse !!!",delegate: self, cancelButtonTitle: "OK")
            
            alert.show()
        }

        
    }
    
    func reponse3 (sender: UIButton!){
        
        if reponseCorrecte == "3"
        {
            var alert:UIAlertView = UIAlertView(title: "Bonne Réponse", message: "Vous avez trouvé la bonne réponse !!!",delegate: self, cancelButtonTitle: "OK")
            
            alert.show()
        }else{
            
            
            var alert:UIAlertView = UIAlertView(title: "Mauvaise Réponse", message: "C'est pas la bonne réponse !!!",delegate: self, cancelButtonTitle: "OK")
            
            alert.show()
        }

       
    }
    
    func reponse4 (sender: UIButton!){
        
        if reponseCorrecte == "4"
        {
            var alert:UIAlertView = UIAlertView(title: "Bonne Réponse", message: "Vous avez trouvé la bonne réponse !!!",delegate: self, cancelButtonTitle: "OK")
            
            alert.show()
        }else{
            
            var alert:UIAlertView = UIAlertView(title: "Mauvaise Réponse", message: "C'est pas la bonne réponse !!!",delegate: self, cancelButtonTitle: "OK")
            
            alert.show()
        }
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

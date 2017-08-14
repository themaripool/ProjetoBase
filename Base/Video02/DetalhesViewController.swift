//
//  DetalhesViewController.swift
//  Video02
//
//  Created by Mariela Andrade on 17/07/17.
//  Copyright © 2017 Mariela Andrade. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {

    @IBOutlet weak var nomeHeroi: UILabel!
    @IBOutlet weak var imagemHeroi: UIImageView!
    
    var detailHero: Personagens? {
        didSet {
            configureView()
        }
    }
    
    func configureView() {
        if let detailHero = detailHero {
            if let nomeHeroi = nomeHeroi, let imagemHeroi = imagemHeroi {
                nomeHeroi.text = detailHero.nome
                imagemHeroi.image = UIImage(named: detailHero.nome)
                title = detailHero.editora
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

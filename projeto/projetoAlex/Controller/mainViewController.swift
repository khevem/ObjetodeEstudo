//
//  mainViewController.swift
//  projetoAlex
//
//  Created by CLAUDIA MALHEIROS on 11/5/22.
//

import UIKit

class mainViewController: UIViewController {

    @IBOutlet var btInputs: [UIButton]!
    let MAIN = UIStoryboard(name: "Main", bundle: nil)
    
    var managerImages = managerExemplos()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btInputs(_ sender: UIButton) {
        let number = btInputs.firstIndex(of: sender) ?? 0
        if number == 0 {
            managerImages.image = "soma"
        }else if number == 1{
            managerImages.image = "sub"
        }else if number == 2{
            managerImages.image = "mult"
        }
        let VIEW_EXEMPLOS: exemplosViewController = MAIN.instantiateViewController(withIdentifier: "Exemplos") as! exemplosViewController
        VIEW_EXEMPLOS.managerImages = managerImages
        present(VIEW_EXEMPLOS, animated: true, completion: nil)
        performSegue(withIdentifier: "segueExemplos", sender: nil)
    }
    
    @IBAction func returnMainView(segue: UIStoryboardSegue){}
    
}

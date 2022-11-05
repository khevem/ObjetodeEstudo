//
//  exemplosViewController.swift
//  projetoAlex
//
//  Created by CLAUDIA MALHEIROS on 11/5/22.
//

import UIKit

class exemplosViewController: UIViewController {
    
    var managerImages = managerExemplos()
    @IBOutlet weak var imageExemplo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageExemplo.image = UIImage(named: managerImages.image)
    }
    

}

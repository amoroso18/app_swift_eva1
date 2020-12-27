//
//  ViewControllerInfo.swift
//  eva_app
//
//  Created by Tecsup on 12/26/20.
//

import UIKit

class ViewControllerInfo: UIViewController {
    @IBOutlet var textview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textview.text = "ALWA es una de las principales empresas de moda internacional. Pertenece a Inditex, uno de los mayores grupos de distribución del mundo. El cliente es el centro de nuestro particular modelo de negocio, que integra diseño, fabricación, distribución y venta, a través de una amplia red de tiendas propia.Más información en la web corporativa del grupo Inditex: www.ALWA.com"
        
        textview.isSelectable = true
        textview.font = UIFont(name: "Papyrus", size: 13.0)
        textview.isSelectable = false
    


    }
}

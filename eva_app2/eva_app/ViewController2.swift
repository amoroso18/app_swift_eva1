//
//  ViewController2.swift
//  eva_app
//
//  Created by Tecsup on 12/16/20.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet var vistaWeb: UIWebView!
    var recursoRecibido:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        habilitarZoon()
        mostarRecurso()
        // Do any additional setup after loading the view.
    }
    
    func habilitarZoon(){
          vistaWeb.scalesPageToFit = true
      }
          
      func mostarRecurso(){
          let direccionRecurso = URL(fileURLWithPath: Bundle.main.path(forResource: recursoRecibido!, ofType: "pdf", inDirectory: "RECURSOS")!)
          let datos = try? Data(contentsOf: direccionRecurso)
          vistaWeb.load(datos!, mimeType: "application/pdf", textEncodingName: "utf-8", baseURL: direccionRecurso)
      }
    
}

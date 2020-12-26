//
//  ViewController2.swift
//  TableView
//
//  Created by CESAR on 12/12/20.
//

import UIKit

class ViewController2: UIViewController {

    var recursoRecibido:String?
    
    @IBOutlet var vistaWeb: UIWebView!
    override func viewDidLoad() {
            super.viewDidLoad()
            mostarRecurso()
            habilitarZoon()
        }
        
    func habilitarZoon(){
        vistaWeb.scalesPageToFit = true
    }
        
    func mostarRecurso(){
        let direccionRecurso = URL(fileURLWithPath: Bundle.main.path(forResource: recursoRecibido!, ofType: "pdf", inDirectory: "RECURSOS")!)
        let datos = try? Data(contentsOf: direccionRecurso)
        vistaWeb.load(datos!, mimeType: "application/pdf", textEncodingName: "utf-8", baseURL: direccionRecurso)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

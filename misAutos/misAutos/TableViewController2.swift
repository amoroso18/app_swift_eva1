//
//  TableViewController2.swift
//  misAutos
//
//  Created by Tecsup on 12/21/20.
//

import UIKit

class TableViewController2: UIViewController {
    @IBOutlet weak var recurso: UILabel!
    
    
    var recursoRecibido:String?
    var reimage:UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setEditing(true, animated: true)
        var recibido:String = recursoRecibido!
        mostrardata(id:recibido)
       
        //reimage = UIImage(named: "ICONOS/auto1.jpg")
        //self.imagen = UIImageView(image: reimage)
    }
    
    func mostrardata(id:String){
        print(id)
        switch (id){
                case "1":
                    recurso.text = "no es un auto de full equipo"
                    
                case "2":
                    recurso.text = "Es un auto de full equipo"
                    /*
                case "3":
                    cell.imageView?.image = UIImage(named: "ICONOS/auuto3.jpg")
                    cell.detailTextLabel?.text = "es un auto full equipo"
                case "4":
                    cell.imageView?.image = UIImage(named: "ICONOS/auto4.jpg")
                    cell.detailTextLabel?.text = "es un auto full equipo"
                case "5":
                    cell.imageView?.image = UIImage(named: "ICONOS/auto5.jpg")
                    cell.detailTextLabel?.text = "es un auto full equipo"
                case "6":
                    cell.imageView?.image = UIImage(named: "ICONOS/auto6.jpg")
                    cell.detailTextLabel?.text = "es un auto full equipo"
                case "7":
                    cell.imageView?.image = UIImage(named: "ICONOS/auuto7.jpg")
                    cell.detailTextLabel?.text = "es un auto full equipo"
                case "8":
                    cell.imageView?.image = UIImage(named: "ICONOS/auto8.jpg")
                    cell.detailTextLabel?.text = "es un auto full equipo"
                case "9":
                    cell.imageView?.image = UIImage(named: "ICONOS/auuto9.jpg")
                    cell.detailTextLabel?.text = "es un auto full equipo"
                case "10":
                    cell.imageView?.image = UIImage(named: "ICONOS/auto10.jpg")
                    cell.detailTextLabel?.text = "es un auto full equipo"
 */
               default:
                    print ("seleccion recibida")
                    //recurso.text = "No encontrado"
                }
    }
    
    
      
       
       
    
    

   

}

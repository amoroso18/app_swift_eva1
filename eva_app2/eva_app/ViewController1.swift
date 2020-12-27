//
//  ViewController1.swift
//  eva_app
//
//  Created by Tecsup on 12/16/20.
//

import UIKit

class ViewController1: UIViewController,UITableViewDelegate, UITableViewDataSource {
      @IBOutlet var Tabla: UITableView!
    var contenidoCeldas = ["estilo1","estilo2","estilo3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        Tabla.dataSource = self
        Tabla.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Celda")
               celda.textLabel?.text = contenidoCeldas[indexPath.row]
               return celda
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           let recursoSeleccionado = indexPath.row
           self.performSegue(withIdentifier: "pantallaDosSegue", sender: recursoSeleccionado)
       }
       
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "pantallaDosSegue"{
               let idrecursoRecibido = sender as! Int
               let pantalla2:ViewController2 = segue.destination as! ViewController2
               pantalla2.recursoRecibido = contenidoCeldas[idrecursoRecibido]
           }
       }
    

}

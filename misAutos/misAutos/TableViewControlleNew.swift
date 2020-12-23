//
//  TableViewControlleNew.swift
//  misAutos
//
//  Created by Tecsup on 12/19/20.
//

import UIKit


class TableViewControlleNew: UITableViewController{
    var arregloNumeros = ["1","2","3","4","5","6","7","8","9","10"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.isEditing = true
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        setEditing(true, animated: true)
    
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arregloNumeros.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "auto", for: indexPath)
        cell.textLabel?.text = arregloNumeros[indexPath.row]
       
        switch cell.textLabel?.text{
                case "1":
                    cell.imageView?.image = UIImage(named: "ICONOS/auto1.jpg")
                    cell.detailTextLabel?.text = "no es un auto de full equipo"
                case "2":
                    cell.imageView?.image = UIImage(named: "ICONOS/auto2.jpg")
                    cell.detailTextLabel?.text = "es un auto full equipo"
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
               default:
                    print ("No hay mas elementos para llenar imagen")
                    cell.detailTextLabel?.text = "Celda fuera de rango"
                }

        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        /*
        if editingStyle == .delete {
            // Delete the row from the data source
            //tableView.deleteRows(at: [indexPath], with: .fade)
            arregloNumeros.remove(at: indexPath.row)
            tableView.reloadData()
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 
        }
 */
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let objetoMovido = self.arregloNumeros[fromIndexPath.row]
                arregloNumeros.remove(at: fromIndexPath.row)
                arregloNumeros.insert(objetoMovido, at: to.row)
                NSLog("%@", "\(fromIndexPath.row) => \(to.row) \(arregloNumeros)")
        
    }


    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        if (self.isEditing){
            self.editButtonItem.title = "Editar"
        }
        else{
            self.editButtonItem.title = "Hecho"
            
        }
    }
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?{
            let botonEliminar = UITableViewRowAction(style: .normal, title: "Eliminar"){ (accionesFila, indiceFila) in
                self.arregloNumeros.remove(at: indexPath.row)
                tableView.reloadData()
            }
            botonEliminar.backgroundColor = UIColor.red
            let botonInsertar = UITableViewRowAction(style: .normal, title: "Insertar"){ (accionesFila, indiceFila) in
                let ultimoElemento = self.arregloNumeros[self.arregloNumeros.count-1]
                self.arregloNumeros.append(String(Int(ultimoElemento)! + 1))
                tableView.reloadData()
                print("boton insertar \(ultimoElemento)")
            }
            botonInsertar.backgroundColor = UIColor.green
            return[botonEliminar, botonInsertar]
        }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let recursoSeleccionado = indexPath.row
           self.performSegue(withIdentifier: "pantallaDosSegue", sender: recursoSeleccionado)
       }
       
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
           if segue.identifier == "pantallaDosSegue"{
               let idrecursoRecibido = sender as! Int
               let pantalla2:TableViewController2 = segue.destination as! TableViewController2
               pantalla2.recursoRecibido = arregloNumeros[idrecursoRecibido]
           }
       }

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

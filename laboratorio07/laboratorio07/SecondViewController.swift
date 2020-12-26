//
//  SecondViewController.swift
//  laboratorio07
//
//  Created by Tecsup on 12/23/20.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var controlSegmento: UISegmentedControl!
    
    @IBOutlet weak var txtNumero1: UITextField!
    
    @IBOutlet weak var txtNumero2: UITextField!
    
    
    @IBOutlet weak var lblRespuesta: UILabel!
    
    
    var nro1:Double = 0
    var nro2:Double = 0
    
    
    @IBAction func elegirSegmento(_ sender: Any) {

        let option = (sender as AnyObject).selectedSegmentIndex
        switch option {
        case 0:
            if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil
            {
                
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            lblRespuesta.text = Operacion(n1: nro1, n2: nro2, op: "+")
            }
        case 1:
            if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil
            {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            lblRespuesta.text = Operacion(n1: nro1, n2: nro2, op: "-")
            }
        case 2:
//            print ("Eligio Multiplicar")
            if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil
            {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            lblRespuesta.text = Operacion(n1: nro1, n2: nro2, op: "*")
            }
        case 3:
//            print ("Eligio Dividir")
            if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil
            {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            lblRespuesta.text = Operacion(n1: nro1, n2: nro2, op: "/")
            }
        default:
            print ("Error interno")
        }
 /**/
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    /**/
    func Operacion(n1:Double, n2:Double, op:String) -> String
        {
            switch op
            {
            case "+":
                return String( n1 + n2 )
            case "-":
                return String( n1 - n2 )
            case "*":
                return String( n1 * n2 )
            case "/":
                if (n2 != 0)
                {
                    return String( n1 / n2 )
                }
                else
                {
                    return "Error Division 0"
                }


            default:
                return "Error"
        }
 /**/
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

//}
}

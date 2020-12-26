//
//  FirstViewController.swift
//  laboratorio07
//
//  Created by Tecsup on 12/23/20.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var txtNumero1: UITextField!
    
    
    @IBOutlet weak var txtNumero2: UITextField!
    
    
    @IBOutlet weak var txtRespuesta: UITextField!
    
    var nro1:Double = 0
    var nro2:Double = 0
    var Rpta:Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    

    
    @IBAction func btnSumar(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            Rpta = nro1 + nro2
            txtRespuesta.text = String(Rpta)
            
        }
        
    }
    
    
    @IBAction func btnRestar(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            Rpta = nro1 - nro2
            txtRespuesta.text = String(Rpta)
            
        }
        
    }
    
    
    @IBAction func btnMultiplicar(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            Rpta = nro1 * nro2
            txtRespuesta.text = String(Rpta)
            
        }
        
    }
    
    
    @IBAction func btnDividir(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            Rpta = nro1 / nro2
            txtRespuesta.text = String(Rpta)
            
        }
        
    }
    }
    
    
    
    

    
    
    

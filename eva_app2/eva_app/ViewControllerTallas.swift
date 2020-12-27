

import UIKit

class ViewControllerTallas: UIViewController {

    @IBOutlet weak var stock: UILabel!
    @IBOutlet weak var color: UILabel!
    @IBOutlet weak var precio: UILabel!
    @IBOutlet weak var cupon: UITextField!
    @IBOutlet weak var descuento: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tallas(_ sender: UIButton) {
        buscarTalla(valor: "s")
    }
    
    @IBAction func tallaxs(_ sender: UIButton) {
        buscarTalla(valor: "xs")
    }
        

    @IBAction func tallam(_ sender: UIButton) {
        buscarTalla(valor: "m")
    }
    
    
    
    @IBAction func tallal(_ sender: UIButton) {
        buscarTalla(valor: "l")
    }
    
    
    
    @IBAction func tallaxl(_ sender: UIButton) {
        buscarTalla(valor: "xl")
    }
        
    func buscarTalla(valor:String){
        cuponverdad()
        let talla = valor
        switch talla {
        case "s":
            stock.text = "90"
            color.text = "Rojo y Negro"
            precio.text = "50"
            break
        case "xs":
            stock.text = "60"
            color.text = "solo verde"
            precio.text = "s/.55 U"
            break
        case "m":
            stock.text = "100"
            color.text = "Amarillo y gris"
            precio.text = "s/.45 U"
            break
       
        case "l":
            stock.text = "80"
            color.text = "Verde y Negro"
            precio.text = "s/.70 U"
            break
       
        case "xl":
            stock.text = "30"
            color.text = "Violeta y Marron"
            precio.text = "s/.65 U"
            break
        default:
            stock.text = ""
            color.text = ""
            precio.text = ""
            break
            
        }
    }

    func cuponverdad(){
        let descuentodia = "10"
        //var temp = Int(descuentodia ?? "0")!
        let temp = Int(descuentodia)!
        //let descuentito = "s/.\(temp)"
        let descuentito = "s/.\(String(temp))"
        let copon = cupon.text
        descuento.text = copon=="2020" ? descuentito: "-"
      
    }
        
   
}

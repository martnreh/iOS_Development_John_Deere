//
//  ViewController.swift
//  myFirstAapp
//
//  Created by Adrian Martin Hernandez  on 28/09/22.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var numeroSuperior: UITextField!
    
    @IBOutlet weak var numeroInferior: UITextField!
    
    @IBOutlet var tituloLabel: UILabel!
    
    @IBAction func division(_ sender: Any) {
        
        //let dividendo = numeroInferior.text
        //let divisor = numeroSuperior.text
        
        let divisor = Float(numeroInferior.text!)
        let dividendo = Float(numeroSuperior.text ?? "0")
        
        let resultado = (dividendo!) / (divisor!)
        
        let alert = UIAlertController(title: "Resultado", message: String(resultado), preferredStyle:UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true,completion: nil)
        
        
    }
    
    @IBOutlet var textField1: UITextField!
    
    
    @IBAction func btn1(_ sender: Any) {
        
        let alert = UIAlertController(title: "ALERTAA", message: textField1.text, preferredStyle:UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true,completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tituloLabel.text = "Segunda aplicación"
        tituloLabel.textColor = UIColor(red: 36, green: 80, blue: 155/255, alpha: 1.0)
    }


}


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
    
    
    var  resultado:Float = 0
   var numeroInf: Float = 0
    var numeroSup : Float = 0
    
    @IBAction func division(_ sender: Any) {
        
        
        
    }
    
 
    
    
    
    
    
    @IBAction func btnSumar(_ sender: Any) {
        numeroInf = Float(numeroInferior.text!) ?? 0
        numeroSup = Float(numeroSuperior.text!) ?? 0
        
        resultado = (numeroSup)  + (numeroInf)
        MostrarAlerta(mensaje: String(resultado), titulo: "Resultado")
    }
    
    
    
    @IBAction func btnRestar(_ sender: Any) {
        numeroInf = Float(numeroInferior.text!) ?? 0
        numeroSup = Float(numeroSuperior.text!) ?? 0
        
        resultado = (numeroSup)  - (numeroInf)
        MostrarAlerta(mensaje: String(resultado), titulo: "Resultado")
    }
    
    
    
    @IBAction func btnMultiplicar(_ sender: Any) {
        numeroInf = Float(numeroInferior.text!) ?? 0
        numeroSup = Float(numeroSuperior.text!) ?? 0
        
        resultado = (numeroSup)  * (numeroInf)
        MostrarAlerta(mensaje: String(resultado), titulo: "Resultado")
        
    }
    
    
    @IBAction func btnDividir(_ sender: Any) {
        
        numeroInf = Float(numeroInferior.text!) ?? 0
        numeroSup = Float(numeroSuperior.text!) ?? 0
        
        resultado = (numeroSup) / (numeroInf)
        
        MostrarAlerta(mensaje: String(resultado), titulo: "Resultado")
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       // tituloLabel.text = "Segunda aplicación"
       // tituloLabel.textColor = UIColor(red: 36, green: 80, blue: 155/255, alpha: 1.0)
    }
    
    
    func MostrarAlerta(mensaje: String, titulo: String){
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle:UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true,completion: nil)
    }
    
    
    
    @IBAction func navegarAImagen(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let imageViewController = storyBoard.instantiateViewController(withIdentifier: "imagenViewController")
        imageViewController.modalPresentationStyle = .fullScreen
        self.present(imageViewController, animated: true)
    }
    


}


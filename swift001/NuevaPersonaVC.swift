//
//  ViewController.swift
//  swift001
//
//  Created by jcapasix on 19/7/17.
//  Copyright © 2017 Jordan Capa. All rights reserved.
//

import UIKit

protocol NuevaPersonaVCDelegate{
    func guardarPersona(persona:Persona)
}

class NuevaPersonaVC: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtEdad: UITextField!
    
    var delegate:NuevaPersonaVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func guardar(_ sender: Any) {
    
        if !(txtNombre.text?.isEmpty)! && !(txtEdad.text?.isEmpty)!{
            
            let nombre = txtNombre.text
            let edad = Int(txtEdad.text!)
            let persona = Persona(nombre:nombre , edad: edad)
            
            delegate?.guardarPersona(persona: persona)
            
            dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func cancelar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}


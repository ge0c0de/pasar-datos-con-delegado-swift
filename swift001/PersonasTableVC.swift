//
//  PersonasTableViewController.swift
//  swift001
//
//  Created by jcapasix on 19/7/17.
//  Copyright © 2017 Jordan Capa. All rights reserved.
//

import UIKit

class PersonasTableVC: UITableViewController, NuevaPersonaVCDelegate {
    
    var personas:[Persona] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personas.append(Persona(nombre: "Jordan", edad: 24))
        personas.append(Persona(nombre: "Clever", edad: 25))
        personas.append(Persona(nombre: "Anghy" ,  edad: 31))
    }
    
    func guardarPersona(persona: Persona) {
        personas.append(persona)
        self.tableView.reloadData()
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        cell.textLabel?.text = personas[indexPath.row].nombre
        cell.detailTextLabel?.text = "\(personas[indexPath.row].edad!)"
        return cell
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "nuevaPersona"{
            
            let navigation = segue.destination as! UINavigationController
            let vc = navigation.topViewController as! NuevaPersonaVC
            vc.delegate = self
        }
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

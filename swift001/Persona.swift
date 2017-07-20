//
//  Persona.swift
//  swift001
//
//  Created by jcapasix on 19/7/17.
//  Copyright © 2017 Jordan Capa. All rights reserved.
//

import UIKit

class Persona: NSObject {

    var nombre:String?
    var edad:Int?
    
    init(nombre:String?, edad:Int?) {
        self.nombre = nombre
        self.edad = edad
    }
    
}

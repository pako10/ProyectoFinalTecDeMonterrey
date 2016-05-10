//
//  VCEventos.swift
//  ProyectoFinal1
//
//  Created by Francisco Humberto Andrade Gonzalez on 6/05/16.
//  Copyright © 2016 Francisco Humberto Andrade Gonzalez All rights reserved.
//

import UIKit

class VCEventos: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let urls: String = "http://104.236.91.248/mexico"
        let url = NSURL(string: urls)
        let datos = NSData(contentsOfURL: url!)
        if datos == nil{
            let alert = UIAlertController(title:"Error", message: "No hay conexion a Internet", preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(alert, animated: true, completion: nil)
            return
        }
        else {
            do{
                let json = try NSJSONSerialization.JSONObjectWithData(datos!, options: NSJSONReadingOptions.MutableLeaves)
            }
            catch _ {
                
            }
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}

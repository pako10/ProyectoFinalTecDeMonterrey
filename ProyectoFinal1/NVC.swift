//
//  NVC.swift
//  ProyectoFinal1
//
//  Created by Francisco Humberto Andrade Gonzalezon 21/04/16.
//  Copyright © 2016 CFrancisco Humberto Andrade Gonzalez. All rights reserved.
//


import UIKit
import CoreData

class NVC: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let origen = sender as! ViewController
        let vc = segue.destinationViewController as! VC
        origen.sesion?.stopRunning()
        vc.urls = origen.urls
        
    }
    
    
}

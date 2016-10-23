//
//  ViewController.swift
//  NavigationExample
//
//  Created by Wesley Cintra Nascimento on 20/10/16.
//  Copyright © 2016 Wesley Cintra Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func exibirViewD(_ sender: UIButton) {
        
        // Dispara a navegação em modo programado
        self.performSegue(withIdentifier: "showViewD", sender: self)
    }
    
    @IBAction func exibirViewE(_ sender: UIButton) {
        // Exibir a view (full) programaticamente
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "viewE")
        self.show(vc!, sender: self)
    }

    // MARK: - FUNÇÕES DE APOIO
    
    // Função (não obrigatória) disparada automaticamente, sempre que um comento performSegue é executado
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showViewD" {
            // Instanciar a classe destino
            let destinationController = segue.destination as! ThirdViewController
            
            // temos as propriedades expostas
            destinationController.msgRecebida = "Msg enviada pela view A"
        }
    }
}


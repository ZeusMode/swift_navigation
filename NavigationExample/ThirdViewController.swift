//
//  ThirdViewController.swift
//  NavigationExample
//
//  Created by Wesley Cintra Nascimento on 20/10/16.
//  Copyright © 2016 Wesley Cintra Nascimento. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    // MARK: - Controle das views
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if msgRecebida != nil {
            lblRecebeDados.text = msgRecebida
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Outlets
    @IBOutlet weak var lblRecebeDados: UILabel!

    // MARK: - Propriedades
    var msgRecebida: String?
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

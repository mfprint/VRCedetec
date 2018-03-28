//
//  PreviewViewController.swift
//  VRCedetec
//
//  Created by Martín Figueroa Padilla on 18/02/18.
//  Copyright © 2018 Martín Figueroa Padilla. All rights reserved.
//

import UIKit

class PreviewViewController: UIViewController {

    @IBOutlet weak var locationTxt: UITextView!
    @IBOutlet weak var descriptionTxt: UITextView!

    var room: String = "";
    var floor: Int = 0;
    
    @IBAction func share(_ sender: Any) {
        var textoFijo = "¡Saludos desde CEDETEC!"
        textoFijo = textoFijo + " Estoy en " + locationTxt.text + "."
        textoFijo = textoFijo + " Puedes verlo aquí:"
        if let miSitio = NSURL(string: "http://199.233.252.86/201811/images/CEDETEC/104Gear.JPG") {
            let objetosParaCompartir = [textoFijo, miSitio] as [Any]
            let actividadRD = UIActivityViewController(activityItems: objetosParaCompartir, applicationActivities: nil)
            
            self.present(actividadRD, animated: true, completion: nil)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch floor
        {
            case 1:
                locationTxt.text = room + ", Primer piso";
            case 2:
                locationTxt.text = room + ", Segundo piso";
            default: break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func GoBack(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

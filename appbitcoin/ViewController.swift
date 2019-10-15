//
//  ViewController.swift
//  appbitcoin
//
//  Created by labdesarrollo5 on 10/15/19.
//  Copyright © 2019 labdesarrollo5. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var monedas=[moneda]()
    @IBAction func btnCargaWS(_ sender: UIButton) {
        monedas.removeAll()
            let sURL = "https://api.coindesk.com/v1/bpi/currentprice.json"
            let urlObjeto = URL(string : sURL)
            _ = URLSession.shared.dataTask(with: urlObjeto!){(datos,resouesta,error) in
                if error == nil{
                    do {
                        let json = try JSONSerialization.jsonObject(with: datos!, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String:Any]
                                print("json",json)
                                DispatchQueue.main.sync(execute:{})
                
            }catch let jsonErr{
                print("ERROR EN EL JSON", jsonErr)
                }
                }//fin if
                    else{
                    print("error: ", error!)
                }
            }//fin tarea
        }//fin action    }
    @IBAction func btnCargaTV(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}


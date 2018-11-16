//
//  CongratsViewController.swift
//  Login Start
//
//  Created by Spas Bilyarski on 18.10.18.
//  Copyright © 2018 FMI Practice. All rights reserved.
//

import UIKit

final class CongratsViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    var username: String?
    var password: String?
    
    var location: LocationModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameLabel.text = username
        passwordLabel.text = password
        
        location = LocationModel()
    }
    
    // Задача 6: При всяко отваряне на CongratsViewController трябва да направите нова инстанция на LocationModel.
    
    // Задача 7: Бутонът "затваряне" трябва да извиква метода dismiss(_:), който ще затвори екрана.
    @IBAction func exit(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // Задача 8: Бутонът "напред" трабва да създаде програматично инстанция на MapViewController от nib файла. Също така трябва да му подадете вече създаденият LocationModel.
    
    @IBAction func forward(_ sender: Any) {
        if let navigationController = parent as? UINavigationController {
            let viewController = MapViewController()
            navigationController.pushViewController(viewController, animated: true)
        }
    }
    // Задача 9: Ако получите известие, че паметта намалява освободете структората LocationModel и я създайте наново, ако потребителят натисне бутонът "напред".
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}

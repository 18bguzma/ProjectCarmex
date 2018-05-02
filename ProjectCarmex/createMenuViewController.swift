//
//  createMenuViewController.swift
//  ProjectCarmex
//
//  Created by HSOIMAC-01 on 3/2/18.
//  Copyright © 2018 GSSystems. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import HandySwift
var ref: DatabaseReference!

var newRoomCode = ""


class createMenuViewController: UIViewController {
    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func createButtonTapped(_ sender: Any) {
        newRoomCode = (String(randomWithLength: 8, allowedCharactersType: .alphaNumeric))
        print(newRoomCode)
        let alert = UIAlertController(title: "Confirm new grocery list!", message: "Are you sure you want to create a new grocery list? \nCODE: " + newRoomCode, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
            
            print("Send code to server and create new folder and file for new grocery list!")
            ref.child("lists").child(newRoomCode).setValue(["roomCode": newRoomCode])
            }))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        self.present(alert, animated: true)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

//
//  homeScreen.swift
//  ProjectCarmex
//
//  Created by HSOIMAC-01 on 3/2/18.
//  Copyright © 2018 GSSystems. All rights reserved.
//

import UIKit

class homeScreen: UIViewController {
    
    @IBAction func joinButtonTapped(_ sender: Any) {
        print("Join Button Tapped!")
    }
    @IBAction func createButtonTapped(_ sender: Any) {
        print("Create Button Tapped!")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

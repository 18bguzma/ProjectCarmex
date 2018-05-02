//
//  joinMenuViewController.swift
//  ProjectCarmex
//
//  Created by HSOIMAC-01 on 3/2/18.
//  Copyright © 2018 GSSystems. All rights reserved.
//

import UIKit

class joinMenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "backButton")
            self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "backButton")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = "Join"
        navigationItem.hidesBackButton = false;
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

//
//  ViewControllerAdd.swift
//  
//
//  Created by HSOIMAC-02 on 5/10/18.
//

import UIKit
import Firebase

class ViewControllerAdd: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldGenre: UITextField!
    @IBOutlet weak var labelMessage: UILabel!
    
    
    @IBOutlet weak var tableViewArtists: UITableView!
    
    @IBAction func buttonAddArtist(_ sender: UIButton){
        addArtist()
    }
    
    var refArtists: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //configuring firebase
        FirebaseApp.configure()
        
        //getting a reference to the node artists
        refArtists = Database.database().reference().child("artists");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func addArtist(){
        //generating a new key inside artists node
        //and also getting the generated key
        let key = refArtists.childByAutoId().key
        
        //creating artist with the given values
        let artist = ["id":key,
                      "artistName": textFieldName.text! as String,
                      "artistGenre": textFieldGenre.text! as String
        ]
        
        //adding the artist inside the generated unique key
        refArtists.child(key).setValue(artist)
        
        //displaying message
        labelMessage.text = "Artist Added"
    }
    

}


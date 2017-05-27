//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Nick on 27.05.17.
//  Copyright © 2017 LagoikoNick. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTitle = "Quit Playing Games With My Heart"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            
            if let song = sender as? String {
            
                destination.selectedSong = song
            
            }
            
            
        }
 

    }

}

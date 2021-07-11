//
//  DetailsViewController.swift
//  ShrekBook
//
//  Created by MEWO on 27.06.2021.
//

import UIKit

class DetailsViewController: UIViewController{

    @IBOutlet weak var ShrekCharName: UILabel!
    @IBOutlet weak var ShrekFamVocalizer: UILabel!
    @IBOutlet weak var ShrekFamUIView: UIImageView!
    
    var SelectedShrek : ShrekFam?
    override func viewDidLoad() {
        super.viewDidLoad()
        ShrekCharName.text = SelectedShrek?.name
        ShrekFamVocalizer.text = SelectedShrek?.vocalizer
        ShrekFamUIView.image = SelectedShrek?.image
        
    }
    


}

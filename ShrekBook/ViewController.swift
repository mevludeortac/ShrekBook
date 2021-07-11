//
//  ViewController.swift
//  ShrekBook
//
//  Created by MEWO on 27.06.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    var ourShrek = [ShrekFam]()
    var choosenShrekFam : ShrekFam?

    
    @IBOutlet weak var ShrekFamilyTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ShrekFamilyTableView.delegate = self
        ShrekFamilyTableView.dataSource = self
        
        //shrek fam objects
        let shrek = ShrekFam(nameInit: "Shrek", vocalizerInit: "Mike Myers", imageInit: UIImage(named: "shrek")!)
        let fiona = ShrekFam(nameInit: "Fiona", vocalizerInit: "Cameron Diaz", imageInit: UIImage(named: "fiona")!)
        let donkey = ShrekFam(nameInit: "Donkey", vocalizerInit: "Eddie Murphy.", imageInit: UIImage(named: "donkey")!)
        let cat = ShrekFam(nameInit: "Cat", vocalizerInit: "Antonio Banderas", imageInit: UIImage(named: "cat")!)
        let dragon = ShrekFam(nameInit: "Dragon", vocalizerInit: "Not Found", imageInit: UIImage(named: "dragon")!)
        let fairy = ShrekFam(nameInit: "Fairy Godmother", vocalizerInit: "Jennifer Saunders", imageInit: UIImage(named: "fairy-godmother")!)
        let gingerbread = ShrekFam(nameInit: "Gingerbread", vocalizerInit: "Conrad Vernon", imageInit: UIImage(named: "gingerbread")!)
        let lordFarquaad = ShrekFam(nameInit: "Lord Farquaad", vocalizerInit: "John Lithgow", imageInit: UIImage(named: "LordFarquaad")!)
        let pinnocchio = ShrekFam(nameInit: "Pinnocchio", vocalizerInit: "Cody Cameron", imageInit: UIImage(named: "Pinnocchio")!)
        
        //shrek char adding
        ourShrek.append(shrek)
        ourShrek.append(fiona)
        ourShrek.append(donkey)
        ourShrek.append(cat)
        ourShrek.append(gingerbread)
        ourShrek.append(lordFarquaad)
        ourShrek.append(pinnocchio)
        ourShrek.append(dragon)
        ourShrek.append(fairy)
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()//hazır sınıf çağırdık
        cell.textLabel?.text = ourShrek[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ourShrek.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenShrekFam = ourShrek[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"
        {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.SelectedShrek = choosenShrekFam
        }
    }
}


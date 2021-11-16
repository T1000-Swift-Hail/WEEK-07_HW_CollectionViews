//
//  ViewController.swift
//  Art
//
//  Created by Huda N S on 11/04/1443 AH.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var Collection: UICollectionView!
    
    var Art = [UIImage(named: "1")! , UIImage(named: "2")! , UIImage(named: "3")! , UIImage(named: "4")! , UIImage(named: "5")! , UIImage(named: "6")! , UIImage(named: "7")! , UIImage(named: "8")! , UIImage(named: "9")! , UIImage(named: "10")! , UIImage(named: "11")! , UIImage(named: "12")!]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Collection.dataSource = self
        Collection.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Art.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeCell", for: indexPath) as? CollectionCell else {return UICollectionViewCell()}
        cell.photo.image = Art[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "painting", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "painting" {
            
            let Arts = Art[self.Collection.indexPathsForSelectedItems?[0].row ?? 0]
            let destination = segue.destination as! Painting
            destination.name = Arts
        }
    }
}

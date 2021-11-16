//
//  ViewController.swift
//  collectionView
//
//  Created by Mastorah on 16/11/2021.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout  {

    @IBOutlet weak var collection: UICollectionView!
    var arrimage = [UIImage(named: "imge1")!,UIImage(named:"imge2")!,UIImage(named:"imge3")!,UIImage(named:"imge4")!,UIImage(named:"imge5")!,UIImage(named:"imge6")!,UIImage(named:"imge7")!,UIImage(named:"imge8")!]
    
    func setDelegate () {
        collection.dataSource = self
        collection.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate ()
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrimage.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"cell", for: indexPath) as? CollectionCell else {return UICollectionViewCell()}
        
        cell.Imgnature.image = arrimage[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) - 12, height: (view.frame.height) / 3)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    performSegue(withIdentifier: "Nature", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Nature" {
            let Arts = arrimage[self.collection.indexPathsForSelectedItems?[0].row ?? 0]
            let destination = segue.destination as! secound_screen
            destination.secondimg = Arts
        }
    }
}

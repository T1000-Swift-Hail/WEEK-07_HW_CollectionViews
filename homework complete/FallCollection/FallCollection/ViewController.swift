//
//  ViewController.swift
//  FallCollection
//
//  Created by Hind Alharbi on 11/16/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
   let imageSet = [UIImage(named: "Fall_1"),UIImage(named: "Fall_2"),UIImage(named: "Fall_3"),UIImage(named: "Fall_4"),UIImage(named: "Fall_5"),UIImage(named: "Fall_6"),UIImage(named: "Fall_7"),UIImage(named: "Fall_8"),UIImage(named: "Fall_9"),UIImage(named: "Fall_10"),UIImage(named: "Fall_11"),UIImage(named: "Fall_12")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        // Do any additional setup after loading the view.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageSet.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? FallCollectionViewCell else {return UICollectionViewCell()}
        cell.fallImage.image = imageSet[indexPath.row]
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (view.frame.width ) / 2, height: (view.frame.height) / 6)
    
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
        performSegue(withIdentifier: "second", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "second" {
            let fall = imageSet[self.collectionView.indexPathsForSelectedItems?[0].row ?? 0]
            let destion = segue.destination as! SecondPageVC
            destion.imageV = fall
            
        }
    }
}





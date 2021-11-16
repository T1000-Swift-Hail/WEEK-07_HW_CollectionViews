//
//  ViewController.swift
//  HW_CollectionViews
//
//  Created by Njoud Alrshidi on 11/04/1443 AH.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout ,UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    var galleryClouds = [UIImage(named: "1"),UIImage(named: "2") , UIImage(named: "3") , UIImage(named: "4"),  UIImage(named: "5") , UIImage(named: "6") , UIImage(named: "7") ,UIImage(named: "8") , UIImage(named: "9") , UIImage(named: "10") , UIImage(named: "11") , UIImage(named: "12"), UIImage(named: "13") , UIImage(named: "14") , UIImage(named: "15") , UIImage(named: "16") ,  UIImage(named: "17") ]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return galleryClouds.count
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell else { return UICollectionViewCell()}
        cell.imageView.image = galleryClouds[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.size.width) / 2 ,height: (view.frame.size.height) / 6)

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "identifier", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "identifier"{
            let imagGallery = galleryClouds[self.collectionView.indexPathsForSelectedItems? [0].row ?? 0]
            let origin = segue.destination as! ImageViewController
            origin.viewImage = imagGallery
        }
    }
}

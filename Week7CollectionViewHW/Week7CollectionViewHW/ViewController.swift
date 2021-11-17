//
//  ViewController.swift
//  Week7CollectionViewHW
//
//  Created by mona aleid on 11/04/1443 AH.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrNaturePics = [NaturePics]()
        
    var selectedImage = UIImage(named: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
        arrNaturePics.append(NaturePics(photo: UIImage(named: "pic1")!))
        arrNaturePics.append(NaturePics(photo: UIImage(named: "pic2")!))
        arrNaturePics.append(NaturePics(photo: UIImage(named: "pic3")!))
        arrNaturePics.append(NaturePics(photo: UIImage(named: "pic4")!))
        arrNaturePics.append(NaturePics(photo: UIImage(named: "pic5")!))
        arrNaturePics.append(NaturePics(photo: UIImage(named: "pic6")!))
        arrNaturePics.append(NaturePics(photo: UIImage(named: "pic7")!))
        arrNaturePics.append(NaturePics(photo: UIImage(named: "pic8")!))
        arrNaturePics.append(NaturePics(photo: UIImage(named: "pic9")!))
        arrNaturePics.append(NaturePics(photo: UIImage(named: "pic10")!))
        arrNaturePics.append(NaturePics(photo: UIImage(named: "pic11")!))
        arrNaturePics.append(NaturePics(photo: UIImage(named: "pic12")!))
        
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrNaturePics.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "picsCell", for: indexPath) as! PicsCollectionViewCell
        let picsNatureCollection = arrNaturePics[indexPath.row]
        cell.setupCell(photo: picsNatureCollection.photo)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width / 2, height: self.view.frame.width  / 3.5)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("hiii")
        selectedImage = arrNaturePics[indexPath.row].photo
        performSegue(withIdentifier: "fullNaturePics", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: (Any)?) {
        if segue.identifier == "fullNaturePics" {
//            let selectedIndex = collectionView.indexPathsForSelectedItems?[0].row ?? 0
//            print(selectedIndex)
//            let natures = arrNaturePics[0]
            let destination = segue.destination as! SecondVC
            destination.fullimg = selectedImage
        }
    }

struct NaturePics {
   
    let photo : UIImage
    
}
}


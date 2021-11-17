//
//  HeritageViewController.swift
//  CollectionViews
//
//  Created by HIND12 on 11/04/1443 AH.
//

import UIKit


extension HeritageVC
    : UICollectionViewDataSource
,UICollectionViewDelegateFlowLayout {

    
        

        
        func setDelegate() {
            collectionViewArt.dataSource = self
            collectionViewArt.delegate = self
        }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return methods.mehodsData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =
        collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionCell
        
        let imageName =  methods.mehodsData[indexPath.row].rawValue
        
        cell.imageView.image = UIImage(named:imageName)
        return cell
    }

        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    

        func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout:UICollectionViewLayout,sizeForItemAt indexpath:IndexPath)-> CGSize {
            
            
     
            return CGSize(width: (view.frame.width) / 2, height: (view.frame.height)/3.8 )
        }
        
        
        
    func collectionView(_ collectionview:UICollectionView,didSelectItemAt indexpath: IndexPath){
        
        
            performSegue(withIdentifier: "toDetals", sender: nil)
        
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "toDetals" {
            
            let destination = segue .destination
        as! ViewController2
        destination.selectedImage = selectedImage
        }
    }
}
        
    
        
        
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


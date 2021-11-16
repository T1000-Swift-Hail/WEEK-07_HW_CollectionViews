//
//  Painting.swift
//  Art
//
//  Created by Huda N S on 11/04/1443 AH.
//

import UIKit

class Painting: UIViewController {


    @IBOutlet weak var artPicture: UIImageView!
    var name : UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()

        artPicture.image = name
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

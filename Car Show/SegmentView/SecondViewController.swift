//
//  SecondViewController.swift
//  SegmentView
//
//  Created by Consultant on 3/21/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var logoImage: UIButton!
    var sgLogo:Logo?
    override func viewDidLoad() {
        super.viewDidLoad()
        logoImage.setImage(sgLogo?.image?.1, for: .normal)
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

    @IBAction func clickDismiss(_ sender: Any) {
        print("click second view")
        dismiss(animated: true)
    }
}

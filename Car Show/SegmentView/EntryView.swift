//
//  ViewController.swift
//  SegmentView
//
//  Created by Consultant on 3/21/22.
//

import UIKit

class EntryView: UIViewController {

    private var logo:Logo?
    
    @IBOutlet weak var segments: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad")
        var pos = 0
        //print(Logo.allCases)
        segments.removeAllSegments()
        for sg in Logo.allCases{
            segments.insertSegment(withTitle: sg.image!.0, at: pos, animated: false)
            pos+=1
        }
        segments.selectedSegmentIndex=0
        titleName.text = Logo.allCases[0].image?.0
        logo = Logo.audi
        self.logoImage.isUserInteractionEnabled = true
        //let apGr = UITapGestureRecognizer(target: self, action: #selector(self.gestureClick(_:)))
        //self.logoImage.addGestureRecognizer(apGr)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }

   
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var titleName: UILabel!
    //@IBOutlet weak var logoImage: UIImageView!
    @IBAction func selectLogo(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        logo = Logo(rawValue: index)
        logoImage.image=logo?.image?.1
        //logoImage.setImage(logo?.image?.1, for: .normal)
        //logoImage.imageEdgeInsets = UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)
        titleName.text = logo?.image?.0
        //print(self.logo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "logoJump"{
            let controller = segue.destination as! SecondViewController
            print(logo)
            //controller.logoImage.setImage(logo?.image?.1 , for:.normal)
            controller.sgLogo = logo
        }
    }
    
    @IBAction func logClickJump(_ sender: UITapGestureRecognizer) {
        self.performSegue(withIdentifier: "logoJump", sender: self)
    }
}


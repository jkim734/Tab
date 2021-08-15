//
//  ViewController.swift
//  ImageView
//
//  Created by Kim Jae Hyeon on 2021/08/12.
//

import UIKit

class ImageViewController: UIViewController {
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgOn = UIImage(named:"lightOn.png")
        imgOff = UIImage(named: "lightOff.png")
        imgView.image = imgOn
        // Do any additional setup after loading the view.
    }


    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if(isZoom){
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            btnResize.setTitle("확대", for: .normal)
            
        }
        else{
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
            btnResize.setTitle("축소", for: .normal)
            
        }
        isZoom = !isZoom
    }
    @IBAction func switchImageOff(_ sender: UISwitch) {
        if sender.isOn{
            imgView.image = imgOn
        }else{
            imgView.image = imgOff
        }
    }
}


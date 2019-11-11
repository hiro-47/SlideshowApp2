//
//  ViewController.swift
//  SlideshowApp
//
//  Created by KATAOKA  HIROTAKA on 2019/11/10.
//  Copyright © 2019 hirotaka.kataoka. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet var imageView: UIImageView!
        
    
    var timer: Timer!
    
    var timer_sec: Float = 0
    
    
    var image1: UIImage!
    var image2: UIImage!
    var image3: UIImage!
    
    var aaaa = 1
    
    var kkkk = true
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        image1 = UIImage(named:"img1")
        image2 = UIImage(named:"img2")
        image3 = UIImage(named:"img3")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        
        resultViewController.image = imageView.image
        if self.timer != nil {
            self.timer.invalidate()
            self.timer = nil
            nextButton.isEnabled = true
            backButton.isEnabled = true
        }
        
    }
    
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }

    
    @IBAction func nextButton(_ sender: Any) {
        
        if aaaa == 1{
            imageView.image = image2
            aaaa = 2
        }
        else if aaaa == 2{
            imageView.image = image3
            aaaa = 3
        }
        else if aaaa == 3{
            imageView.image = image1
            aaaa = 1
        }
        
    }
    @IBAction func backButton(_ sender: Any) {
        
        if aaaa == 1{
            imageView.image = image3
            aaaa = 2
        }
        else if aaaa == 2{
            imageView.image = image2
            aaaa = 3
        }
        else if aaaa == 3{
            imageView.image = image1
            aaaa = 1
        }
        
    }
    
    @objc func updateTimer(_ timer: Timer) {
        
        self.timer_sec += 1
        if aaaa == 1{
            imageView.image = image2
            aaaa = 2
        }
        else if aaaa == 2{
            imageView.image = image3
            aaaa = 3
        }
        else if aaaa == 3{
            imageView.image = image1
            aaaa = 1
        }
        
    }
    @IBAction func startTimer(_ sender: Any) {
        if self.timer ==  nil {
            self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            nextButton.isEnabled = false
            backButton.isEnabled = false
        }
            
        else if self.timer != nil {
            self.timer.invalidate()
            self.timer = nil
            nextButton.isEnabled = true
            backButton.isEnabled = true
        }
        
    }
}

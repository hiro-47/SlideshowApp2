//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by KATAOKA  HIROTAKA on 2019/11/10.
//  Copyright © 2019 hirotaka.kataoka. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    var image :UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
    }
}

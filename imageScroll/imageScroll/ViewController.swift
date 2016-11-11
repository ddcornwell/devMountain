//
//  ViewController.swift
//  imageScroll
//
//  Created by DANIEL CORNWELL on 10/24/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    
    @IBOutlet weak var myMainScollView: UIScrollView!
    
    var imageArray = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myMainScollView.frame = view.frame
        
        imageArray = [#imageLiteral(resourceName: "one"), #imageLiteral(resourceName: "three"), #imageLiteral(resourceName: "two"), #imageLiteral(resourceName: "four")]
        
        for i in 0..<imageArray.count {
            
            
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.myMainScollView.frame.width, height: self.myMainScollView.frame.height)
            
            myMainScollView.contentSize.width = myMainScollView.frame.width * CGFloat(i + 1)
            myMainScollView.addSubview(imageView)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


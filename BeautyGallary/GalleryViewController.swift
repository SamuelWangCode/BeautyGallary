//
//  GallaryViewController.swift
//  BeautyGallary
//
//  Created by 王星洲 on 2018/5/1.
//  Copyright © 2018年 cn.edu.tongji.1652977. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController {

    @IBOutlet weak var beautyImage: UIImageView!
    
    var imageName : String?
    let beauties = ["范冰冰", "李冰冰", "王菲", "杨幂", "周迅"]
    var index : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = imageName{
            beautyImage.image = UIImage(named: name)
            navigationItem.title = beauties[index]
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

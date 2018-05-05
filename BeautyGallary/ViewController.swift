//
//  ViewController.swift
//  BeautyGallary
//
//  Created by 王星洲 on 2018/4/30.
//  Copyright © 2018年 cn.edu.tongji.1652977. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautiPicker: UIPickerView!
    
    let beauties = ["范冰冰", "李冰冰", "王菲", "杨幂", "周迅"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        beautiPicker.dataSource = self
        beautiPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToGallary"{
            let index = beautiPicker.selectedRow(inComponent: 0)
            let images = ["fanbingbing", "libingbing", "wangfei", "yangmi", "zhouxun"]
            let imageName = images[index]
            let vc = segue.destination as! GalleryViewController
            vc.imageName = imageName
            vc.index = beautiPicker.selectedRow(inComponent: 0)
        }
    }
    
    //Unwind Segue
    @IBAction func close(Segue: UIStoryboardSegue){
        
    }

}


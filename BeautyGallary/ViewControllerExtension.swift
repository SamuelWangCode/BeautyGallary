//
//  ViewControllerExtension.swift
//  BeautyGallary
//
//  Created by 王星洲 on 2018/4/30.
//  Copyright © 2018年 cn.edu.tongji.1652977. All rights reserved.
//

import UIKit

extension ViewController : UIPickerViewDataSource{
    public func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        //组件个数
        return 1
    }
    
    
    // returns the # of rows in each component..
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        //行数
        return beauties.count
    }
}

extension ViewController : UIPickerViewDelegate
{
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return beauties[row]
    }
}

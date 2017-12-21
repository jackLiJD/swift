//
//  StartDiagramVc.swift
//  TodayHeaderLine
//
//  Created by 返利峰 on 2017/12/20.
//  Copyright © 2017年 com.alading. All rights reserved.
//

import UIKit

class StartDiagramVc: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.ViewImage)
        self.ViewImage.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.size.equalTo(self.view)
        }
        
        UIView.animate(withDuration: 1, animations: {
             self.ViewImage.alpha = 1;
            let countDownView = CountDownBtn.init()
            self.view.addSubview(countDownView)
            
            countDownView.snp.makeConstraints({ (make) in
                make.top.equalTo(self.view).offset(40)
                make.right.equalTo(self.view).offset(-20)
                make.height.equalTo(20)
                make.width.equalTo(50)
            })
        }) { (false) in
            
            
        }
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         super.view.backgroundColor = LF_View_BackgroundColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    lazy var ViewImage:UIImageView = {
        () -> UIImageView in
     let ViewImage = UIImageView.init()
         ViewImage.image = UIImage.init(named: "adImage")
         ViewImage.alpha = 0
        return ViewImage
        
    }()

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

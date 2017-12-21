//
//  CountDownBtn.swift
//  TodayHeaderLine
//
//  Created by 返利峰 on 2017/12/20.
//  Copyright © 2017年 com.alading. All rights reserved.
//

import UIKit

class CountDownBtn: UIView {
  public var count:NSInteger!
    var timer :Timer!
    private var countDownLb = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.SetupUI()
    }
  
    required init?(coder aDecoder: NSCoder) {
      
        fatalError("init(coder:) has not been implemented")
    }
    private func SetupUI(){
      self.layer.cornerRadius = 10
      self.layer.masksToBounds = true
      count = 5
      self.backgroundColor = UIColor.white.withAlphaComponent(0.3)
        //倒计时label
      self.countDownLb = UILabel.init()
      self.countDownLb.font = UIFont .systemFont(ofSize: 12);
      self.countDownLb.textColor = UIColor.white
      self.countDownLb.backgroundColor = UIColor.clear
      self.countDownLb.textAlignment = .center
       self.countDownLb.text = "5秒"
        
      self.addSubview(self.countDownLb)
      self.countDownLb.snp.makeConstraints { (make) in
          make.size.equalTo(self)
          make.left.top.equalTo(self)
        }
      self.timer = Timer.scheduledTimer(timeInterval:1, target:self, selector: #selector(CountDownClick), userInfo: nil, repeats: true)
 
    }
    
    
    @objc private func CountDownClick(){
         count! -= 1
        self.countDownLb.text = "\(count!)秒"
        guard count! > 0 else {
            timer.invalidate()
            return
        }
      
    }
    
}



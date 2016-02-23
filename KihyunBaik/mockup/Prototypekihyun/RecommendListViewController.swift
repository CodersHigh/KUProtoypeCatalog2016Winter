//
//  RecommendListViewController.swift
//  Prototypekihyun
//
//  Created by Kihyun-Soyeon on 2016. 2. 17..
//  Copyright © 2016년 Kihyun-Soyeon. All rights reserved.
//

import UIKit

class RecommendListViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var postArray :[Post]=[]
        let post0 = Post()
        post0.title = "소비자 및 광고 심리연구실 피험자 모집"
        post0.age = (20, 25)
        post0.category = Category.Psychology
        post0.gender = Gender.Both
        post0.pay = 10000
        post0.region = Region.성북
        post0.date = "2016. 1.19~29"
        
        let post0ex0 = Experiment()
        post0ex0.capacity = 10
        let post0ex1 = Experiment()
        post0ex1.capacity = 10
        let post0ex2 = Experiment()
        post0ex2.capacity = 10
        let post0ex3 = Experiment()
        post0ex3.capacity = 10
        let post0ex4 = Experiment()
        post0ex4.capacity = 10
        
        post0.experiments = [post0ex0, post0ex1, post0ex2, post0ex3, post0ex4]
        
        
        let post1 = Post()
        post1.title = "FMRI 실험피험자 모집"
        post1.age = (23, 27)
        post1.category = Category.Clinical
        post1.gender = Gender.Both
        post1.pay = 50000
        post1.region = Region.성북
        post1.date = "2016. 1.25~27"
        
        let post1ex0 = Experiment()
        post1ex0.capacity = 13
        let post1ex1 = Experiment()
        post1ex1.capacity = 14
        let post1ex2 = Experiment()
        post1ex2.capacity = 15
        let post1ex3 = Experiment()
        post1ex3.capacity = 15
        let post1ex4 = Experiment()
        post1ex4.capacity = 15
        
        post1.experiments = [post1ex0, post1ex1, post1ex2, post1ex3, post1ex4]
        
        let post2 = Post()
        post2.title = "게임중독관련 MRI 측정 참가자 모집"
        post2.age = (23, 27)
        post2.category = Category.Clinical
        post2.gender = Gender.Both
        post2.pay = 60000
        post2.region = Region.성북
        post2.date = "2016. 1.28~30"
        
        let post2ex0 = Experiment()
        post2ex0.capacity = 13
        let post2ex1 = Experiment()
        post2ex1.capacity = 14
        let post2ex2 = Experiment()
        post2ex2.capacity = 15
        let post2ex3 = Experiment()
        post2ex3.capacity = 15
        let post2ex4 = Experiment()
        post2ex4.capacity = 15
        
        post2.experiments = [post2ex0, post2ex1, post2ex2, post2ex3, post2ex4]
        
        
    }
    
    
    
    
}

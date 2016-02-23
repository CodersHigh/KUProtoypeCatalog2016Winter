//
//  post.swift
//  Prototypekihyun
//
//  Created by Kihyun-Soyeon on 2016. 2. 17..
//  Copyright © 2016년 Kihyun-Soyeon. All rights reserved.
//

import Foundation

typealias ageRange = (min:Int, max:Int)

class Post {
    var title:String
    var age:ageRange
    var category:Category
    var gender:Gender
    var region:Region
    var experiments:[Experiment]
    var pay:Int
    var date:String
    init () {
        title = ""
        age = (20, 50)
        category = .Clinical
        gender = .Man
        region = .강남
        experiments = []
        pay = 0
        date = ""
    }
}

class Experiment {
    var date:NSDate
    var capacity:Int
    init () {
        date = NSDate()
        capacity = 0
    }
}

enum Category {
    case Clinical
    case Psychology
    case Language
    case Etc
}
enum Gender {
    case Man
    case Woman
    case Both

}
enum Region {
    case 강남
    case 강동
    case 도봉
    case 성북
    case 종로
    case 서대문
    case 은평
    case 동작
    case 양천
    case 부산
    case 대구
}

//특정날짜의 nsdate만들기, 이 포스트들을 테이블에 뿌리기.
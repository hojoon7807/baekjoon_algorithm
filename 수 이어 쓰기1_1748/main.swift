//
//  main.swift
//  수 이어 쓰기1_1748
//
//  Created by ho jun lim on 2021/07/27.
//

import Foundation

let n:Int = Int(readLine()!)!
var result:Int = 0
var start:Int = 1
while start<=n{
    result += (n-start+1)
    start *= 10
}
print(result)

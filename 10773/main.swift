//
//  main.swift
//  10773
//
//  Created by ho jun lim on 2021/07/20.
//

import Foundation

let k:Int = Int(readLine()!)!
var stack:[Int] = []
var result:Int = 0

for _ in 0..<k {
    var money:Int = Int(readLine()!)!
    if money != 0 {
        result += money
        stack.append(money)
    }else{
        result -= stack.last!
        stack.removeLast()
    }
}
print(result)

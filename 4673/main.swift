//
//  main.swift
//  4673
//
//  Created by ho jun lim on 2021/07/20.
//

import Foundation

var arr:[Bool] = [Bool](repeating: false, count: 10036)

func num(_ value:Int) ->Int {
    var newValue = value
    var sum:Int = 0
    
    sum += newValue
    while newValue != 0{
        sum += newValue%10
        newValue = newValue/10
    }
    return sum
}

for i in 1..<10001{
    arr[num(i)] = true
    if arr[i] == false{
        print(i)
    }
}

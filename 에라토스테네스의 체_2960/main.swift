//
//  main.swift
//  에라토스테네스의 체_2960
//
//  Created by ho jun lim on 2021/08/13.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0]
let k = input[1]

var count = 0
var array = Array(repeating: true, count: n+1)

for i in 2...n{
    for j in stride(from: i, through: n, by: i){
        if array[j]{
            array[j] = false
            count += 1
            if count == k {
                print(j)
                break
            }
        }
    }
}

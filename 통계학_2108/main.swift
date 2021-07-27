//
//  main.swift
//  통계학_2108
//
//  Created by ho jun lim on 2021/07/27.
//

import Foundation

let n:Int = Int(readLine()!)!
var numList:[Int] = []
var countDict:[Int:Int] = [:]

for _ in 0..<n {
    let num:Int = Int(readLine()!)!
    numList.append(num)
    countDict[num, default:0] += 1
}
numList.sort()

//산술 평균
let avg:Int = Int(round(Double(numList.reduce(0){$0 + $1})/Double(n)))
print(avg)
    
//중앙값
print(Int(numList[n/2]))

//최빈값
let maxValue = countDict.max { $0.value<$1.value }?.value
var mode = countDict.filter { $0.value == maxValue }.keys.sorted()
if mode.count > 1{
    print(mode[1])
}else{
    print(mode[0])
}

//범위
print(numList.last! - numList.first!)

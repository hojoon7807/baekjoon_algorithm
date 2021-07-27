//
//  main.swift
//  한 줄로 서기_1138
//
//  Created by ho jun lim on 2021/07/27.
//

import Foundation

let n:Int = Int(readLine()!)!
var line:[Int] = []
var answer:[Int] = []

for _ in 0..<n{
    line.append(Int(readLine()!)!)
}

for k in (0..<n).reversed(){
    answer.insert(k+1, at: line[k])
}

//for i in 0..<n{
//    var myLeft:Int = Int(readLine()!)!
//    for j in 0..<n{
//        if line[j]==0 && myLeft==0{
//            line[j] = i+1
//            break
//        }else if line[j] == 0{
//            myLeft -= 1
//        }else if line[j] != 0{
//            continue
//        }
//    }
//}

for elem in answer {
    print(elem, terminator:" ")
}

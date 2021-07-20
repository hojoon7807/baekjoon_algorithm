//
//  2504.swift
//  baekjoon_algorithm
//
//  Created by ho jun lim on 2021/07/19.
//

import Foundation

var brackets:[String] = readLine()!.map{String($0)}
var stack:[String] = []
var result:Int = 0
var correct:Bool = true
var temp:Int = 1

for i in 0..<brackets.count{
    switch  brackets[i]{
    case "(" :
        temp *= 2
        stack.append(brackets[i])
    case "[" :
        temp *= 3
        stack.append(brackets[i])
    case ")" :
        if stack.isEmpty || stack.last != "("{
            correct = false
            
        }
        if brackets[i-1]=="("{
            result += temp
        }
        stack.removeLast()
        temp /= 2
    case "]" :
        if stack.isEmpty || stack.last != "["{
            correct = false
        }
        if brackets[i-1]=="["{
            result += temp
        }
        stack.removeLast()
        temp /= 3
    default:
        correct = false
    }

}
if !correct || !stack.isEmpty{
    print(0)
}else{
    print(result)
}

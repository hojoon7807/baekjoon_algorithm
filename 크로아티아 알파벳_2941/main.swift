//
//  main.swift
//  크로아티아 알파벳_2941
//
//  Created by ho jun lim on 2021/08/13.
//
import Foundation

let croatia = ["c=","c-","dz=","d-","lj","nj","s=","z="]
let alpha = Array(readLine()!)
var count = 0
var i = 0
let length = alpha.count
func search(_ str: String)->Int{
    if croatia.contains(str){
        return 1
    }else{return 0}
}

for _ in 0..<alpha.count{
    if i == length {break}
    if (length > i+1) && (search("\(alpha[i])\(alpha[i+1])") != 0){
        i += 2
        count += 1
    }else if(length > i + 2) && (search("\(alpha[i])\(alpha[i+1])\(alpha[i+2])") != 0 ){
        i += 3
        count += 1
    }else{
        i += 1
        count += 1
    }
}

print(count)


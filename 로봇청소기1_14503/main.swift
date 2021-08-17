//
//  main.swift
//  로봇청소기1_14503
//
//  Created by ho jun lim on 2021/08/17.
//

import Foundation

let nm = readLine()!.split(separator: " ").map{Int($0)!}
let n = nm[0]
let m = nm[1]

let robotInfo = readLine()!.split(separator: " ").map{Int($0)!}
var r = robotInfo[0]
var c = robotInfo[1]
var d = robotInfo[2]

let direct = [-1,1,1,-1]

var count = 1

var map:[[Int]] = []

for _ in 0..<n {
    map.append(readLine()!.split(separator: " ").map{Int($0)!})
}

map[r][c] = -1

func clean()->Bool{
    for _ in 0...3{
    //방향전환
        if d == 0{
            d = 3
        }else{
            d -= 1
        }
        
        if d % 2 == 0{
            if map[r+direct[d]][c] == 0 {
                r += direct[d]
                count += 1
                map[r][c] = -1
                return true
            }else {
                continue
            }
        }
        if d%2 == 1{
            if map[r][c+direct[d]] == 0 {
                c += direct[d]
                count += 1
                map[r][c] = -1
                return true
            }else {
                continue
            }
        }
    }
    return false
}

while true {
    if !clean(){
        if d%2 == 0{
            if map[r-direct[d]][c] == 1{
                break
            }else {
                r = r - direct[d]
                clean()
            }
        }
        if d%2==1{
            if map[r][c-direct[d]] == 1{
                break
            }else {
                c = c - direct[d]
                clean()
            }
        }
    }
}

print(count)

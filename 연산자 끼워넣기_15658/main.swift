//
//  main.swift
//  연산자 끼워넣기_15658
//
//  Created by ho jun lim on 2021/08/13.
//

import Foundation



let n = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map{Int($0)!}
var operation = readLine()!.split(separator: " ").map{Int($0)!}
var maxV = -1000000001
var minV = 1000000001
func dfs(_ plus:Int,_ minus:Int,_ multi:Int,_ div:Int,_ ans:Int,_ depth:Int){
    if depth == n{
        if ans > maxV {maxV=ans}
        if ans < minV {minV=ans}
        return
    }

    if plus>0 {dfs(plus-1, minus, multi, div, ans+nums[depth], depth+1)}
    if minus>0 {dfs(plus, minus-1, multi, div, ans-nums[depth], depth+1)}
    if multi>0 {dfs(plus, minus, multi-1, div, ans*nums[depth], depth+1)}
    if div>0 {dfs(plus, minus, multi, div-1, ans/nums[depth], depth+1)}
}

dfs(operation[0],operation[1],operation[2],operation[3],nums[0],1)
print(maxV)
print(minV)

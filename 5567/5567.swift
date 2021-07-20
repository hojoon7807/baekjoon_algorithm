//
//  5567.swift
//  baekjoon_algorithm
//
//  Created by ho jun lim on 2021/07/19.
//

import Foundation

func bfs(_ start:Int)->Int{
    var level:Int = 0
    var count:Int = 0
    var queue:[Int] = [start]
    while !queue.isEmpty {
        level += 1
        for _ in 0..<queue.count{
            let person = queue.removeFirst()
            for friend in friends[person]{
                if !check[friend]{
                    check[friend]=true
                    queue.append(friend)
                    count += 1
                }
            }
        }
        if level == 2 {
            return count
        }
    }
    return 0
}

var n:Int = Int(readLine()!) ?? 0

var m:Int = Int(readLine()!) ?? 0

var friends:[[Int]] = [[Int]](repeating: [], count: n+1)
var check:[Bool] = [Bool](repeating: false, count: n+1)
//그래프 만들기
for _ in 0..<m{
    let relation = readLine()!.split(separator: " ").map { Int(String($0))!}
    friends[relation[0]].append(relation[1])
    friends[relation[1]].append(relation[0])
}

//var count = friends[1].count
//friends[1].forEach { friends[$0].forEach {
//    if !check[$0]{
//        check[$0]=true
//        count += 1
//        }
//    }
//}
check[1]=true
print(bfs(1))

//
//  main.swift
//  1966
//
//  Created by ho jun lim on 2021/07/19.
//
let tc:Int = Int(readLine()!)!

for _ in 0..<tc{
    let nm:[Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
    var importance:[Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
    var queue:[[Int]] = [[Int]](repeating: [], count: nm[0])
    for i in 0..<nm[0]{
        queue[i].append(importance[i])
        queue[i].append(i)
    }
    var count:Int = 0
    while !queue.isEmpty{
        importance.sort()
        let first = queue.removeFirst()
        if first[0] == importance.last{
            count += 1
            importance.removeLast()
            if first[1] == nm[1] {
                print(count)
                break
            }
        }else{
            queue.append(first)
        }
    }
}


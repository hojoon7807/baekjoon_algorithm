//
//  main.swift
//  경비원_2564
//
//  Created by ho jun lim on 2021/08/03.
//

import Foundation

let xy:[Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
let stores:Int = Int(readLine()!)!
var map:[Int] = []
var result = 0

for _ in 0...stores{
    let location:[Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
    if location[0]==1{
        map.append(location[1])
    }else if location[0]==2{
        map.append(xy[0]+xy[1]+(xy[0]-location[1]))
    }else if location[0]==3{
        map.append(2*xy[0]+xy[1]+(xy[1]-location[1]))
    }else{
        map.append(xy[0]+location[1])
    }
}

let guard1 = map.last!

for store in map{
    var length = store - guard1
    let totalLength = (xy[0]+xy[1])*2
    if length < 0 {
        length = -length
    }
    result += min(length, totalLength-length)
}
print(result)

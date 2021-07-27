//
//  main.swift
//  그룹단어체커_1316
//
//  Created by ho jun lim on 2021/07/27.
//

import Foundation

let n:Int = Int(readLine()!)!
var result:Int = 0

for _ in 0..<n{
    var checkWord:[Character]=[]
    var word:String = readLine()!
    
    for char in word{
        if !checkWord.contains(char){
            checkWord.append(char)
        }else if checkWord.last != char {
            checkWord.removeAll()
            break
        }else if checkWord.last == char {
            checkWord.append(char)
        }
    }
    if !checkWord.isEmpty{
        result += 1
    }
}

print(result)

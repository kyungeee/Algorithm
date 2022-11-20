//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//

import Foundation

let n = Int(readLine()!)!

var memo: [Int] = Array(repeating: Int.max, count: n+1)
memo[0] = 0
for i in 1...n {
    var j = 1
    while j*j <= i {
        if j * j <= i {
            memo[i] = min(memo[i], memo[i-j*j]+1)
            j += 1
        }
    }
}

print(memo[n])

//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//

import Foundation


let n = Int(readLine()!)!


//  dp table
var dp = Array(repeating: 0, count: 50001)


//  제곱수 배열
//var sq = [Int]()
//var i = 1
//while i * i <= n {
//    sq.append(i*i)
//    dp[i*i] = 1
//    i += 1
//}

//sq.reverse()

// 처음 시도했던 방식 -> 반례: 12
// 12 = 3*3 + 1 + 1 + 1 => 4개
// 12 = 2*2 + 2*2 + 2*2 => 3개

//for i in 1...n {
//    for j in sq {
//        if i-j > 0 {
//            dp[i] = dp[i-j] + 1
//            break
//        } else if i == j{
//            break
//        }
//    }
//}

dp[1] = 1

for i in 2...n {
    dp[i] = dp[1] + dp[i-1]
    var j = 2
    while j*j <= i {
        if j*j == i {
            dp[i] = 1
            break
        }
        dp[i] = min(dp[i], 1 + dp[i - j * j])
        j+=1
    }
}

print(dp[n])







//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//

import Foundation

let n = Int(readLine()!)!

var dp = Array(repeating: -1, count: 5001)

dp[0] = 0
dp[3] = 1
 
for i in 3...n {
    if dp[i-3] != -1 {
        dp[i] = dp[i-3] + 1
    }
    
    if i-5 >= 0 {
        if dp[i-5] != -1 {
            if dp[i-3] != -1 {
                dp[i] = min(dp[i-5] + 1, dp[i])
            } else {
                dp[i] = dp[i-5] + 1
            }
        }
    }
}

print(dp[n])

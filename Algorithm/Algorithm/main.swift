//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//

import Foundation

// 런타임 에러뜸 왜인지는 아직 모르겠음...
// dp[1] = 1 로 초기화 시켜주고, 밑에 for 문 바깥에 n>1 일때 라는 조건을 하나 달아주니 맞았음.

let n = Int(readLine()!)!

//  dp table
var dp = Array(repeating: 0, count: n+1)

dp[1] = 1

// 처음 N과 가장 가까운 제곱수만 생각하면 되는 것이 아니라 모든 제곱수에 대한 경우의 수 도 다 찾아봐야함.
if n > 1 {
    for i in 2...n {
        dp[i] = dp[1] + dp[i-1]
        var j = 2
        while j*j <= i {
            dp[i] = min(dp[i], 1 + dp[i - j * j])
            j += 1
        }
    }
}

print(dp[n])








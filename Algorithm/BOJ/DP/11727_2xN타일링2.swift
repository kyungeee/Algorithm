//
//  11727_2xN타일링2.swift
//  DP
//
//  Created by 박희경 on 2023/05/07.
//

//import Foundation
//
//let n = Int(readLine()!)!
//
//var dp = [Int](repeating: 0, count: n+1)
//
//
//if n == 1 {
//    print("1")
//} else if n == 2 {
//    print("3")
//} else {
//    dp[1] = 1
//    dp[2] = 3
//
//    for i in 3...n {
//        dp[i] = (dp[i-1] + dp[i-2] * 2 ) % 10007
//    }
//
//    print(dp[n])
//}


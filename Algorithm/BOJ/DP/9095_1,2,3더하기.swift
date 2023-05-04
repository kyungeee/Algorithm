//
//  9095_1,2,3더하기.swift
//  DP
//
//  Created by 박희경 on 2023/05/04.
//


//import Foundation
//
//let t = Int(readLine()!)!
//
//var dp = [Int](repeating: 0, count: 11)
//
//dp[1] = 1
//dp[2] = 2
//dp[3] = 4
//
//// ex) n = 5
//// dp[4] 4를 만들수 있는 모든 경우의 수에 +1 한 것과 같음
//// dp[3] 3를 만들수 있는 모든 경우의 수에 +2 한 것과 같음
//// dp[2] 2를 만들수 있는 모든 경우의 수에 +3 한 것과 같음
//for _ in 0..<t {
//    let n = Int(readLine()!)!
//    
//    for i in 4...n {
//        dp[i] = dp[i-1] + dp[i-2] + dp[i-3]
//    }
//    
//    print(dp[n])
//}
//
//
//
//
//
//

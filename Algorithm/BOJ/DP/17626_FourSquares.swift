//
//  17626_FourSquares.swift
//  DP
//
//  Created by 박희경 on 2023/05/04.
//

import Foundation


// 런타임 에러뜸 왜인지는 아직 모르겠음...

//let n = Int(readLine()!)!
//
////  dp table
//var dp = Array(repeating: 0, count: 50001)


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

//dp[1] = 1
//

// 처음 N과 가장 가까운 제곱수만 생각하면 되는 것이 아니라 모든 제곱수에 대한 경우의 수 도 다 찾아봐야함.
//for i in 2...n {
//    dp[i] = dp[1] + dp[i-1]
//    var j = 2
//    while j*j <= i {
//        if j*j == i {
//            dp[i] = 1
//            break
//        }
//        dp[i] = min(dp[i], 1 + dp[i - j * j])
//        j+=1
//    }
//}
//
//print(dp[n])








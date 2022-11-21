//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//


// 시간초과: 0.5s -> 완탐으로 풀면 maybe 시초
import Foundation

// input
let nk = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nk[0], k = nk[1]

var warr = [Int]()
for _ in 0..<n {
    let w = Int(readLine()!)!
    warr.append(w)
}

// 완탐 vs DP(ex. 피보나치) ?
// DP도 재귀로 돌리는디 배열에 메모를 한다. memorization!
// 하향식 -> 재귀적으로 내려가는것, 상향식-> for문으로 처음 1부터 올라가면서 하는것을 상향식
var mem: [Int] = Array(repeating: 0, count: k+1) // ** dp memorization array

// 상향식(for)
func dp2(k: Int) {
    /// 점화식
    /// for j in warr
    mem[0] = 1
    for i in warr {
        for j in 1..<mem.count {
            if j-i >= 0 {
                mem[j] += mem[j-i]
            }
        }
    }
}

// 하향식(재귀) -> 시간초과
//func dp(k: Int, index: Int) -> Int {
//    var sum: Int = 0
//
//    if mem[k] > 0 {
//        return mem[k]
//    }
//    if k == 0 {
//        return 1 // 경우의수 return
//    }
//    if index == n {
//        return 0 // 이제 끝!났다. return 해라
//    }
//    for i in 0..<k/warr[index]+1 {
//        sum += dp(k: k - i * warr[index], index: index+1)
//    }
//
//    mem[k] = sum
//    return sum
//}



//print(dp(k: k, index: 0))
dp2(k: k)
print(mem[k])

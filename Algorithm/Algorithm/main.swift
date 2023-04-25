//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//

import Foundation

// dp table 초기화
var memo = Array(repeating: Array(repeating: 0, count: 30), count: 30)

// 조합 함수 - bottom up
func combination(n: Int, r: Int) {
    
    for i in 1...n {
        for j in 0...r {
            if memo[i][j] != 0 {
                continue
            }
            else if j == 0 || i == j {
                memo[i][j] = 1
            }
            else {
                memo[i][j] = memo[i-1][j-1] + memo[i-1][j]
            }
        }
    }
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map {Int(String($0))!}
    
    let r = input[0]
    let n = input[1]
    
    combination(n: n, r: r)
    
    print(memo[n][r])
    
}

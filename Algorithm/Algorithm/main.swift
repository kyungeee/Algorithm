//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//


import Foundation

// 입력
let n = Int(readLine()!)!
let teamNumber = Int(n/2)

// 능력치 저장 이차원 배열
var power: [[Int]] = Array(repeating: [], count: n)
for i in 0..<n {
    power[i] = readLine()!.split(separator: " ").map({ Int(String($0))! })
}

// 방문 체크 배열
var visited = Array(repeating: false, count: n)


// output
var output = Int.max


func dfs(_ depth: Int, _ index: Int) {
    // 1. team 을 짠다! n/2 만큼 인원수로 !
    // 2. 인원수가 n/2인 경우 팀능력치 계산 후
    // 3. min 값 계산
    // 4. visited 확인
    
    if depth == teamNumber {
        var score1: Int = 0
        var score2: Int = 0
        for i in 0..<n {
            for j in 0..<n {
                if visited[i] && visited[j] {
                    score1 += power[i][j]
                } else if !visited[i] && !visited[j] {
                    score2 += power[i][j]
                }
            }
        }
        output = min(abs(score1 - score2), output)
        return
    }
    
    for i in index..<n {
        if !visited[i] {
            visited[i] = true
            dfs(depth + 1, i)
            visited[i] = false
        }
    }
}


dfs(0, 0)
print(output)





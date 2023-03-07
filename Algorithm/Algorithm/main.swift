//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//


import Foundation

// vertex, edge
let n = Int(readLine()!)!
let m = Int(readLine()!)!

// 인접 리스트
var list: [[Int]] = Array(repeating: [], count: n+1)
// 방문 리스트
var visited: [Bool] = Array(repeating: false, count: n+1)

// virus 감염 수
var virus: Int = 0

for _ in 1...m {
    let edge: [Int] = readLine()!.split(separator: " ").map { Int(String($0))!}
    list[edge[0]].append(edge[1])
    list[edge[1]].append(edge[0])
}


// dfs func
func dfs(_ start: Int) {
    visited[start] = true
    for i in 0..<list[start].count {
        let next = list[start][i]
        if !visited[next] {
            visited[next] = true
            virus += 1
            dfs(next)
        }
    }
}



// print
dfs(1)
print(virus)

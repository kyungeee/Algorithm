//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//

import Foundation


let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1]

var list: [[Int]] = Array(repeating: [], count: n)
for _ in 0..<m {
    let arr: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    list[arr[0]].append(arr[1])
    list[arr[1]].append(arr[0])
}

var visited = Array(repeating: false, count: n)
var check: Bool = false
func dfs(now: Int, depth: Int) {
    // 시간복잡도 -> 4에서 lock 해주기 때문에 가능
    if check {
        return
    }
    
    if depth == 4 {
        check = true
        return
    }
    
    for i in 0..<list[now].count {
        let next = list[now][i]
        if !visited[next] {
            visited[next] = true
//            print("next: \(next), depth: \(depth)")
            dfs(now: next, depth: depth+1)
            if check {
                return
            }
            visited[next] = false // *** 모든 경우의 수 탐색
        }
    }
}

// 첫 시작지를 0으로 지정한것 x
// 따라서 모든 노드들을 첫 시작점으로 다 돌려봐야함. 모든 케이스들을 테스트
for i in 0..<n {
    visited[i] = true
    dfs(now: i, depth: 0)
    if check {
        break
    }
    visited = Array(repeating: false, count: n)
}

if check {
    print(1)
} else {
    print(0)
}

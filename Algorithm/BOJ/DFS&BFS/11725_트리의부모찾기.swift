//
//  11725_트리의부모찾기.swift
//  DFS&BFS
//
//  Created by 박희경 on 2023/03/12.
//

//import Foundation
//
//let n: Int = Int(readLine()!)!
//var list: [[Int]] = Array(repeating: [], count: n+1)
//var visited: [Bool] = Array(repeating: false, count: n+1)
//var parent: [Int] = Array(repeating: 0, count: n+1)
//
//for _ in 0..<n-1 {
//    let v: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
//    list[v[0]].append(v[1])
//    list[v[1]].append(v[0])
//}
//
//func dfs(v: Int) {
//    visited[v] = true
//
//    for i in list[v] {
//        if !visited[i] {
//            parent[i] = v
//            dfs(v: i)
//        }
//    }
//}
//
//
//dfs(v: 1)
//
//for i in 2...n {
//    print(parent[i])
//}
//

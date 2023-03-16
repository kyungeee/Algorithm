//
//  11724_연결요소의개수.swift
//  Algorithm
//
//  Created by 박희경 on 2023/03/16.
//

//import Foundation
//
//let nm: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0], m = nm[1]
//var list: [[Int]] = Array(repeating: [], count: n+1)
//var visited: [Bool] = Array(repeating: false, count: n+1)
//
//for _ in 0..<m {
//    let vertex: [Int] =  readLine()!.split(separator: " ").map{Int(String($0))!}
//    list[vertex[0]].append(vertex[1])
//    list[vertex[1]].append(vertex[0])
//}
//
//func dfs(now: Int) {
//    visited[now] = true
//    for i in list[now] {
//        if !visited[i] {
//            dfs(now: i)
//        }
//    }
//}
//
//var count: Int = 0
//for i in 1...n {
//    if !visited[i]  {
//        dfs(now: i)
//        count += 1
//    }
//}
//
//print(count)
//
//
//
//
//

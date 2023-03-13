//
//  15650_N과M(2).swift
//  DFS&BFS
//
//  Created by 박희경 on 2023/03/09.
//

//import Foundation
//
//let input: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = input[0], m = input[1]
//
//var visited: [Bool] = Array(repeating: false, count: n+1)
//var output: [Int] = []
//
//func dfs(now: Int, depth: Int) {
//    if depth == m {
//        for i in output {
//            print("\(i)", terminator: " ")
//        }
//        print("")
//        return
//    }
//
//    for i in now...n {
//        if !visited[i] {
//            visited[i] = true
//            output.append(i)
//            dfs(now: i, depth: depth+1)
//            visited[i] = false
//            output.removeLast()
//        }
//    }
//}
//
//dfs(now: 1, depth: 0)
//
//

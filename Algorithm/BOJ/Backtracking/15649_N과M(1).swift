//
//  15649_N과M(1).swift
//  DFS&BFS
//
//  Created by 박희경 on 2023/03/09.
//

// 1. 아이디어
// - 백트래킹 재귀함수 안에서, for 돌면서 숫자 선택(이때 방문여부 확인)
// - 재귀함수에서 M개를 선택할 경우 print

// 2. 시간복잡도
// - N! > 가능

// 자료구조
// 결과값 저장 [Int]
// 방문여부 체크 [Bool]

//import Foundation
//
//let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))!}
//
//let n = input[0]
//let m = input[1]
//
//var output: [Int] = []
//var visited: [Bool] = Array(repeating: false, count: n+1)
//
//
//func recur(_ num: Int) {
//    if num == m {
//        for i in output {
//            print("\(i)", terminator: " ")
//        }
//        print("")
//        return
//    }
//
//    for i in 1...n {
//        if visited[i] == false {
//            visited[i] = true
//            output.append(i)
//            recur(num+1)
//            visited[i] = false
//            output.removeLast()
//        }
//    }
//}
//
//
//recur(0)










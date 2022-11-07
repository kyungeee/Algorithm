//
//  1759_암호만들기.swift
//  Backtracking
//
//  Created by 박희경 on 2022/11/08.
//

//import Foundation
//
//let LC: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
//let L = LC[0], C = LC[1]
//var alphabet: [String] = readLine()!.split(separator: " ").map { String($0) }
//alphabet.sort()
//
//var output = [String]()
//var visited = Array(repeating: false, count: C)
//var collection: [String] = ["a","e","i","o","u"]
//
//func recur(now: Int, depth: Int) {
//    if depth == L {
//        var count: Int = 0
//        for i in 0..<collection.count {
//            if output.contains(collection[i]) {
//                count += 1
//            }
//        }
//        if (count >= 1) && (L-count >= 2) {
//            for i in output {
//                print(i, terminator: "")
//            }
//            print("")
//        }
//    }
//
//    for i in now..<C {
//        if !visited[i] {
//            visited[i] = true
//            output.append(alphabet[i])
//            recur(now: i, depth: depth+1)
//            visited[i] = false
//            output.removeLast()
//        }
//    }
//}
//
//recur(now: 0, depth: 0)
//
//

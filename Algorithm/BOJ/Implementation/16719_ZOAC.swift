//
//  16719_ZOAC.swift
//  Algorithm
//
//  Created by 박희경 on 2023/05/30.
//

//import Foundation
//
//
//let word = readLine()!.map { String($0) } // 단어 그대로 배열
//
//var dic: [String: Int] = [:]
//
//let alphabet: [String] = word.sorted() // 사전 순 배열
//
//for i in 0..<word.count {
//    dic[alphabet[i]] = i
//}
//
//
//var visited: [Bool] = Array(repeating: false, count: word.count)
//
//
//func recur(l: Int, r: Int) {
//    var min = 10000, idx = -1
//
////    print("l: \(l), r: \(r)")
//    for i in l..<r + 1 {
//        if visited[i] == false && min > dic[word[i]]! {
//            min = dic[word[i]]!
//            idx = i
//        }
//    }
//
//    if min == 10000 {
////        print("min 값 업데이트 없음")
//        return
//    }
//
//    visited[idx] = true
//
//    for i in 0..<visited.count {
//        if visited[i] == true {
//            print(word[i], terminator: "")
//        }
//    }
//
//    print("")
//
//    recur(l: idx + 1, r: r)
//    recur(l: l, r: idx - 1)
//
//}
//
//recur(l: 0, r: word.count - 1)


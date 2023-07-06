//
//  2019 BLIND 3번 .swift
//  Algorithm
//
//  Created by 박희경 on 2023/07/06.
//

import Foundation


//var comb: [[Int]] = []
//var relation: [[String]] = []
//var result: [[Int]] = []
//
//func solution(_ input:[[String]]) -> Int {
//    relation = input
//
//    for i in 1...relation[0].count {
//        dfs(num: 0, arr: [], count: i)
//    }
//
//    return result.count
//}
//
//// 유일성
//func isUniqueness(comb: [Int]) -> Bool {
//    var isUniq: [[String]] = []
//    for i in 0..<relation.count {
//        var arr: [String] = []
//        for j in comb {
//            arr.append(relation[i][j])
//        }
//        isUniq.append(arr)
//    }
//
//    return Set(isUniq).count == relation.count ? true : false
//}
//
//// 최소성
//func isMinimality(comb: [Int]) {
//    var isSubset: Bool = false
//
//    for i in result {
//        if Set(i).isSubset(of: Set(comb)) {
//            isSubset = true
//            break
//        }
//    }
//
//    if !isSubset {
//        result.append(comb)
//    }
//
//}
//
//func dfs(num: Int, arr: [Int], count: Int) {
//    var arr = arr
//
//    if arr.count == count {
//        // 유일성 검사
//        // 최소성 검사
//        // result 에 저장
//        if isUniqueness(comb: arr) {
//            isMinimality(comb: arr)
//        }
//    }
//
//    for i in num..<relation[0].count {
//        arr.append(i)
//        dfs(num: num+1, arr: arr, count: count)
//        arr.removeLast()
//    }
//}

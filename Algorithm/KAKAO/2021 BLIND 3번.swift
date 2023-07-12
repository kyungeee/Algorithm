//
//  2021 BLIND 3번.swift
//  Algorithm
//
//  Created by 박희경 on 2023/07/12.
//

import Foundation


//var dic: [[String]: [Int]] = [:]
//var infoArr: [[String]] = []
//func solution(_ info:[String], _ query:[String]) -> [Int] {
//    var result: [Int] = []
//    for i in info {
//        let arr = i.split(separator: " ").map{String($0)}
//        infoArr.append(arr)
//    }
//
//    recur(num: 0, comb: [])
//
//    for (key, value) in dic {
//        let temp = value.sorted(by: <)
//        dic[key] = temp
//    }
//
//    for q in query {
//        var arr = q.components(separatedBy: " ").filter { $0 != "and" }
//        let score = Int(arr[4])!
//        arr.removeLast()
//
//        if let value = dic[arr] {
//            result.append(binarySearch(arr: value, score: score))
//        } else {
//            result.append(0)
//        }
//    }
//
//    return result
//}
//
//func binarySearch(arr: [Int], score: Int) -> Int {
//    var low = 0
//    var high = arr.count - 1
//
//    while low <= high {
//        let mid = (low + high) / 2
//        if arr[mid] < score {
//            low = mid + 1
//        } else {
//            high = mid - 1
//        }
//    }
//
//    let count = arr.count - low
//
//    return count
//}
//
//
//func saveScore(comb: [Int]) {
//    for i in infoArr {
//        let score = Int(i[4])!
//        var tmp = i
//        for j in comb {
//            tmp[j] = "-"
//        }
//        tmp.removeLast()
//        if let value = dic[tmp] {
//            dic[tmp]!.append(score)
//        } else {
//            dic[tmp] = [score]
//        }
//
//    }
//}
//
//func recur(num: Int, comb: [Int]) {
//    var arr = comb
//
//    saveScore(comb: arr)
//
//    for i in num..<4 {
//        arr.append(i)
//        recur(num: i + 1, comb: arr)
//        arr.removeLast()
//    }
//}
//
//
//let arr = solution(["java backend junior pizza 150", "python frontend senior chicken 210", "python frontend senior chicken 150", "cpp backend senior pizza 260", "java backend junior chicken 80", "python backend senior chicken 50"], ["java and backend and junior and pizza 100", "python and frontend and senior and chicken 200", "cpp and - and senior and pizza 250", "- and backend and senior and - 150", "- and - and - and chicken 100", "- and - and - and - 150"])
//
//print(arr)
//

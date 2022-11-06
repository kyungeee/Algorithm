//
//  2108_통계학.swift
//  DFS&BFS
//
//  Created by 박희경 on 2022/11/06.
//

//import Foundation
//
//
//let n = Int(readLine()!)!
//var dict = [Int: Int]()
//var numbers: [Int] = []
//for _ in 0..<n {
//    let num = Int(readLine()!)!
//    numbers.append(num)
//    dict[num, default: 0] += 1
//}
//
//numbers.sort()
//
//// 산술평균
//var sum = numbers.reduce(0, +)
//var avg = Double(sum)/Double(numbers.count)
//let roundAvg: Int = Int(round(avg))
//
//print(roundAvg)
//
//// 중앙값
//let idx = numbers.count / 2
//var median = numbers[idx]
//print(median)
//
//
//let set = Set(numbers) // (-1, -2, -3)
//var maxCount = 0
//var mode: [Int] = []
//
//// 최빈값
//for i in set {
//    let filterArr: [Int] = numbers.filter { $0 == i }
//    if maxCount < filterArr.count {
//        maxCount = filterArr.count
//        mode = [] // 초기화 *****
//        mode.append(i)
//    } else if maxCount == filterArr.count {
//        mode.append(i)
//    }
//}
//
//mode.sort()
//if mode.count > 1 {
//    print(mode[1])
//} else {
//    print(mode[0])
//}
//
//
//// 범위
//let max = numbers.max()!
//let min = numbers.min()!
//
//let range = max - min
//print(range)
//























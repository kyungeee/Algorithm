//
//  1912_연속합.swift
//  DP
//
//  Created by 박희경 on 2023/05/09.
//

//import Foundation
//
//let n = Int(readLine()!)!
//
//var cache = readLine()!.split(separator: " ").map { Int(String($0))!
//}
//
//for i in 1..<n {
//    if cache[i] < cache[i-1] + cache[i] {
//        cache[i] = cache[i] + cache[i-1]
//    }
//}
//
//var maxSequenceNum = cache.reduce(Int.min) { max($0, $1) }
//print(maxSequenceNum)

//
//  2579_계단오르기.swift
//  DP
//
//  Created by 박희경 on 2023/05/07.
//

//import Foundation
//
//let n = Int(readLine()!)!
//
//var cache = [Int](repeating: 0, count: 301)
//
//var arr = [Int](repeating: 0, count: 301)
//
//for i in 1...n {
//    let input = Int(readLine()!)!
//    arr[i] = input
//}
//
//cache[1] = arr[1]
//cache[2] = arr[1] + arr[2]
//cache[3] = max(arr[1] + arr[3] , arr[2] + arr[3])
//
//if n > 3 {
//    for i in 4...n {
//        // case1: i-1
//        var maxValue = cache[i-3] + arr[i-1]
//        
//        // case2: i-2
//        maxValue = max(maxValue, cache[i-2])
//        
//        cache[i] = maxValue + arr[i]
//        
//    }
//}
//
//print(cache[n])
//
//
//
//
//
//

//
//  11659_구간합구하기4.swift
//  Algorithm
//
//  Created by 박희경 on 2023/03/18.
//

import Foundation


// 누적합(prefix sum algorithm)
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]

let arr = readLine()!.split(separator: " ").map{Int(String($0))!}

var prefixSum: [Int] = [0]
for i in 0..<n {
    prefixSum.append(prefixSum[i]+arr[i])
}

for _ in 0..<m {
    let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    let start: Int = input[0]
    let last : Int = input[1]
    
    print(prefixSum[last] - prefixSum[start-1])
}








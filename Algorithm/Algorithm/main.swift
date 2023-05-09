//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//

import Foundation

let n = Int(readLine()!)!

let sequence = readLine()!.split(separator: " ").map { Int(String($0))!
}

var cache = [Int](repeating: 1, count: n)

for i in 1..<n {
    for j in (0..<i) {
        if sequence[j] < sequence[i] {
            cache[i] = max(cache[i], cache[j] + 1)
        }
    }
}

var maxSequenceNum = cache.reduce(Int.min) { max($0, $1) }
print(maxSequenceNum)





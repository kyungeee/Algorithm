//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//



import Foundation

// N 개의 샘터, K채의 집
// 불행도 -> 집에서 가장 가까운 샘터까지의 거리
// 틀렸습니다 억까당함 -> 다른 언어 같은 로직으로 했을땐 잘만 통과됨 ..^^

let nk = readLine()!.components(separatedBy: " ").map { Int($0)! }

let n = nk[0], k = nk[1]

let sam = readLine()!.components(separatedBy: " ").map { Int($0)! }


var visited = Set<Int>()

var dx = [1, -1]
// 일차원 배열, 딱히 배열의 크기가 나오지 않음.
func bfs() -> Int64 {
    var queue = [Int]()
    queue.append(sam[0])
    queue.append(sam[1])
    visited.insert(sam[0])
    visited.insert(sam[1])
    
    var count = 0
    var sum: Int64 = 0
    var distance = 1
    
    while !queue.isEmpty {
        var queueSize = queue.count
        
        while ((queueSize) != 0) {
            let now = queue.removeFirst()
            let x = now
            
            for i in dx {
                let nx = x + i
                
                if !visited.contains(nx) {
                    visited.insert(nx)
                    queue.append(nx)
                    count += 1
                    sum += Int64(distance)
                }
                
                if count == k {
                    return sum
                }
            }
            queueSize -= 1
        }
        distance += 1
    }
    
    
    return sum
}

let sum = bfs()
print(sum)

//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//


import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    var answer = 0
    var queue1 = queue1
    var queue2 = queue2
    
    var queue = queue1 + queue2
    
    var sum1 = queue1.reduce(0, +)
    var sum2 = queue2.reduce(0, +)
    
    var targetNumber = (sum1 + sum2) / 2
    
    var right = queue1.count
    var left = 0
    
    if sum1 == sum2 {
        return 0
    }
    
    if (sum1 + sum2) % 2 != 0 {
        return -1
    }

    var total = 0
    while right < queue.count && left <= right {
        
        if sum1 > targetNumber {
            sum1 -= queue[left]
            left += 1
        } else if sum1 < targetNumber {
            sum1 += queue[right]
            right += 1
        } else {
            break
        }
        
        total += 1
    }
    
    if sum1 == targetNumber {
        answer = total
    } else {
        answer = -1
    }
    
    return answer
}



//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//


import Foundation


var maxScore = -1
var resultArr: [Int] = []

func solution(_ n:Int, _ info:[Int]) -> [Int] {
    recur(n: n, apeach: info, arr: [0,0,0,0,0,0,0,0,0,0,0], index: 0)
    return maxScore == -1 ? [-1] : resultArr
}

func isLowerScore(arr1: [Int], arr2: [Int]) -> [Int] {
    var index1: Int = 0
    var index2: Int = 0
    var result: [Int] = []
    for i in 0..<arr1.count {
        if arr1[i] != 0 {
            index1 = i
        }
        if arr2[i] != 0 {
            index2 = i
        }
    }
    
    if index1 == index2 {
        result = arr1[index1] > arr2[index2] ? arr1 : arr2
    } else {
        result = index1 > index2 ? arr1 : arr2
    }
    
    return result
}

func check(apeach: [Int], lion: [Int]) {
    var apeachSum = 0
    var lionSum = 0
    
    for i in 0..<apeach.count {
        if apeach[i] < lion[i] {
            lionSum += (10 - i)
        }
        else {
            if apeach[i] != 0 || lion[i] != 0 {
                apeachSum += (10 - i)
            }
        }
    }
    
    if lionSum > apeachSum {
        if maxScore < lionSum - apeachSum {
            maxScore = lionSum - apeachSum
            resultArr = lion
        } else if maxScore == lionSum - apeachSum {
            resultArr = isLowerScore(arr1: resultArr, arr2: lion)
        }
    }
}

// 완탐
func recur(n: Int, apeach: [Int], arr: [Int], index: Int) {
    var arr = arr
    var sum = arr.reduce(0, +)
    
    if sum == n {
        check(apeach: apeach, lion: arr)
        return
    }
    
    if index > 10 {
        if sum == n {
            check(apeach: apeach, lion: arr)
        }
        return
    }
    
    for i in 0...n {
        arr[index] = i
        if sum + i <= n {
            recur(n: n, apeach: apeach, arr: arr, index: index + 1)
        }
    }
}

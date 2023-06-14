//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//


import Foundation

let t = Int(readLine()!)!
var result: [[Int]] = [] // 입력버퍼 문제 때문에 결과를 한번에 모아서 출력하기 위한 배열

for _ in 0..<t {
    let str = readLine()!.map { String($0) }
    let k = Int(readLine()!)!
    
//    if k == 1 {
//        result.append([1, 1])
//    } else {
//        solution(str: str, k: k)
//    }
    
    solution(str: str, k: k)
    
}

func solution(str: [String], k: Int) {
    var dic = [String : Int]()
    
    for i in Set(str) {
        dic[i] = str.filter({ $0 == i }).count
    }

    var minValue = 10000000000
    var maxValue = -1
//    var lengthArray: [Int] = []
    
    for i in 0..<str.count {
        let alphabet = str[i]
        var count = 0
        
        if dic[alphabet]! < k {
            continue
        }

        for j in i..<str.count {
            if str[j] == alphabet {
                count += 1
            }
            
            if count == k {
                // 방법 1: min, max 값 바로 업데이트 -> 356ms 얘가 더 빠름
                minValue = min(j-i+1, minValue)
                maxValue = max(j-i+1, maxValue)
                // 방법 2: 일단 array 저장 후에 나중에 min, max 값 구하기 -> 416ms 느림
//                lengthArray.append(j-i+1)
                break
            }
        }
    }

    if minValue == 10000000000 || maxValue == -1 {
        result.append([-1])
    } else {
        result.append([minValue, maxValue])
    }
    
//    if let minValue = lengthArray.min() , let maxValue = lengthArray.max() {
//        result.append([minValue, maxValue])
//    } else {
//        result.append([-1])
//    }
}


for i in result {
    if i.count == 2 {
        print("\(i[0]) \(i[1])")
    } else {
        print("\(i[0])")
    }
}

//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//


import Foundation

// swift 문자열의 n번째 이후 모든글자 가져오기
//let s = "12:00:00AM"
//let timeIndex = s.index(s.startIndex, offsetBy: 7)
//let timeStr = String(s[...timeIndex]) // 12:00:00
//let ampmIndex = s.index(s.endIndex, offsetBy: -2)
//let ampmStr = String(s[ampmIndex...]) // AM
//
//
//// 또는 아래와 같이 구할 수도 있다
//let timeStr2 = s.prefix(8) // 12:00:00
//let ampmStr2 = s.suffix(2) // AM
var minvalue = 10000000
var input = ""

func comp(n: Int) -> Int {
    var startIndex = input.startIndex
    var endIndex = input.index(startIndex, offsetBy: n-1)
    var temp = String(input[startIndex...endIndex])
    var count: Int = 1
    var output : String = ""

    var index = n
    while index < input.count {
        startIndex = input.index(endIndex, offsetBy: 1)
        if index + n > input.count {
            break
        }
        endIndex = input.index(startIndex, offsetBy: n-1)
        let split = String(input[startIndex...endIndex])
        if temp == split {
            count += 1
        } else {
            if count > 1 {
                output += "\(count)"
            }
            output += temp

            count = 1
            temp = split
        }
        index += n // 6 -> 8
    }

    if count > 1 {
        output += "\(count)"
    }
    output += temp

    endIndex = input.index(endIndex, offsetBy: 1)
    let remain = String(input[endIndex...])
    output += remain

    return output.count
}


func solution(_ s: String) -> Int {
    input = s
    for i in 1...s.count {
        let result = comp(n: i)
        minvalue = min(minvalue, result)
    }

    return minvalue
}


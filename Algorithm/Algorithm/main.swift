//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//



import Foundation



let input = readLine()!.split(separator: " ").map { Int(String($0))!}

let height = input[0], width = input[1]

var arr = Array(repeating: Array(repeating: false , count: width), count: height)

let block = readLine()!.split(separator: " ").map { Int(String($0))!}
for i in 0..<width {
    for j in 0..<block[i] {
        arr[j][i] = true
    }
}

var total: Int = 0

if arr[0][0] == false && arr[0][width - 1] == false {
    print(total)
} else {
    solution()
    print(total)
}

func solution() {
    for i in 0..<height {
        var num = 0
        var isblock = false
        for j in 0..<width {
            if arr[i][j] == true {
                if isblock {
                    total += num
                    num = 0
                } else {
                    isblock = true
                }
            } else {
                if isblock == true {
                    num += 1
                }
            }
        }
    }
}



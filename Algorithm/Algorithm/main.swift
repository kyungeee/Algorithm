//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//


import Foundation

var input = readLine()!.map { String($0) }


var temp: [String] = []
var index: Int = 0

var minvalue = 10000000

func compression(count: Int) -> Int {
    var arr: [String] = []
    var cut = 0
    var comcount: Int = 1
    var output: String = ""
    
    // temp = [a, b, c]
    for i in 0..<count {
        temp.append(input[i])
    }
    
    for i in count-1..<input.count {
        cut += 1
        arr.append(input[i])
        if cut == count {
            cut = 0
            if temp == arr {
                comcount += 1
            } else {
                if comcount != 1 {
                    output+="\(comcount)"
                }
                for i in temp {
                    output += i
                }
                temp = arr
                comcount = 0
            }
        }
        
        for i in arr {
            output += i
        }
    }
    
    return output.count
}


for i in 1...input.count {
    let result = compression(count: i)
    
    minvalue = min( minvalue, result)
}


print(minvalue)

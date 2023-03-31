//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//

import Foundation

let x = Int(readLine()!)!

var d = Array(repeating: 0, count: 30000)


// bottom up
for i in 2..<x+1 {
    
    d[i] = d[i-1] + 1
    
    if i % 2 == 0 {
        d[i] = min(d[i], d[i/2] + 1)
    }
    
    if i % 3 == 0 {
        d[i] = min(d[i], d[i/3] + 1)
    }
    
    if i % 5 == 0{
        d[i] = min(d[i], d[i/5] + 1)
    }

}


print(d[x])

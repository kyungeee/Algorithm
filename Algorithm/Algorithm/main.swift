//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//


import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    
    var id_Dic: [String: [String]] = [:] // 한 유저가 같은 유저를 여러번 신고한 경우 신고 횟수 1회 처리
    var declaration: [String: Int] = [:]
    
    for i in id_list {
        id_Dic[i] = []
        declaration[i] = 0
    }
    
    var list: [String] = []
    var result: [Int] = []
    
    for i in Set(report) {
        let arr = i.split(separator: " ").map{ String($0) }
        id_Dic[arr[0]]!.append(arr[1])
        declaration[arr[1]]! += 1
    }

    for (key, value) in declaration {
        if value >= k {
            list.append(key)
        }
    }
    
    for i in id_list {
        var count = 0
        for j in list {
            if id_Dic[i]!.contains(j) {
                count += 1
            }
        }
        result.append(count)
    }
    
    return result
    
}
    


let result = solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2)

print(result)

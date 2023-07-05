//
//  2019 BLIND 2번 .swift
//  Algorithm
//
//  Created by 박희경 on 2023/07/05.
//

import Foundation


// 실패율: 스테이지에 도달했으나 아직 클리어하지 못한 플레이어의 수 / 스테이지에 도달한 플레이어 수
//func solution(_ N:Int, _ stages:[Int]) -> [Int] {
//    var notClear = Array(repeating: 0, count: N+2)
//    var failDic: [Int: Double] = [:]
//    var total = stages.count
//
//    for i in stages {
//        notClear[i] += 1
//    }
//
//    for i in 1..<N+1 {
//        total -= notClear[i-1]
//        if notClear[i] == 0 {
//            failDic[i] = 0.0
//        } else {
//            failDic[i] = Double(notClear[i])/Double(total)
//        }
//    }
//
//    let result = failDic.sorted(by: <).sorted(by: {$0.1 > $1.1}).map{$0.key}
//
//    return result
//}

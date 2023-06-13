//
//  17144_미세먼지안녕!.swift
//  Algorithm
//
//  Created by 박희경 on 2023/06/13.
//

import Foundation
//
//let rct = readLine()!.split(separator: " ").map { Int(String($0))! }
//let r = rct[0], c = rct[1], t = rct[2]
//
//var list = Array(repeating: Array(repeating: 0, count: c), count: r)
//var nextList = Array(repeating: Array(repeating: 0, count: c), count: r)
//
//for i in 0..<r {
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    list[i] = input
//}
//
//let dx = [1, -1, 0, 0]
//let dy = [0, 0, 1, -1]
//
//var air = [[Int]]()
//
//for i in 0..<r {
//    for j in 0..<c {
//        if list[i][j] == -1 {
//            air.append([i, j])
//        }
//    }
//}
//
//func spread() {
//    for i in 0..<r {
//        for j in 0..<c {
//            if list[i][j] != 0 {
//                let a = list[i][j] / 5
//                for k in 0..<4 {
//                    let nx = i + dx[k]
//                    let ny = j + dy[k]
//
//                    if nx < 0 || ny < 0 || nx >= r || ny >= c {
//                        continue
//                    }
//
//                    if list[nx][ny] != -1 {
//                        nextList[nx][ny] += a
//                        list[i][j] -= a
//                    }
//                }
//                nextList[i][j] += list[i][j]
//            }
//        }
//    }
//}
//
//let air1X = air[0][0]
//let air1Y = air[0][1]
//let air2X = air[1][0]
//let air2Y = air[1][1]
//
//func counterClockRefresh() {
//    // 왼
//    for i in (0..<air1X-1).reversed() {
//        list[i+1][0] = list[i][0]
//    }
//
//    // 위
//    for i in air1Y+1..<c {
//        list[0][i-1] = list[0][i]
//    }
//
//    // 오
//    for i in 1...air1X {
//        list[i-1][c-1] = list[i][c-1]
//    }
//
//    // 아래
//    for i in (air1Y+1..<c-1).reversed() {
//        list[air1X][i+1] = list[air1X][i]
//    }
//
//    list[air1X][1] = 0
//}
//
//
//func clockRefresh() {
//
//    // 왼
//    for i in air2X+2..<r {
//        list[i-1][air2Y] = list[i][air2Y]
//    }
//
//    // 아래
//    for i in air2Y+1..<c {
//        list[r-1][i-1] = list[r-1][i]
//    }
//
//    // 오
//    for i in (air2X..<r-1).reversed() {
//        list[i+1][c-1] = list[i][c-1]
//    }
//
//    // 위
//    for i in (air2Y+1..<c-1).reversed() {
//        list[air2X][i+1] = list[air2X][i]
//    }
//
//    list[air2X][1] = 0
//}
//
//
//for _ in 0..<t {
//    spread()
//    nextList[air1X][air1Y] = -1
//    nextList[air2X][air2Y] = -1
//    list = nextList
//    counterClockRefresh()
//    clockRefresh()
//
//    nextList =  Array(repeating: Array(repeating: 0, count: c), count: r)
//}
//
//
//let result = list.flatMap { $0 }.filter({ $0 > 0 }).reduce(0, +)
//print(result)
//
//
//


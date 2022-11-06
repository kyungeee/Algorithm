//
//  2583_영역구하기.swift
//  DFS&BFS
//
//  Created by 박희경 on 2022/11/02.
//

//import Foundation
//
//let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
//let m = input[0], n = input[1], k = input [2]
//
//var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)
//
//// 빗금 구간 1로 setting
//for _ in 0..<k {
//    let rect: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let y1 = rect[0], x1 = rect[1], y2 = rect[2], x2 = rect[3]
//
//    for i in x1..<x1+(x2-x1) {
//        for j in y1..<y1+(y2-y1) {
//            if arr[i][j] != 1 {
//                arr[i][j] = 1
//            }
//        }
//    }
//}
//
//var countArr: [Int] = []
//
//let dx = [1, -1, 0, 0]
//let dy = [0, 0, 1, -1]
//
//
//// 흑흑 전역변수 dfs 에서 count셀때 많이 씀!!! 기억주의!!!!!! ***
//// code refectoring ver.
//func dfs(x: Int, y: Int) -> Int {
//    var area = 1
//
//    for i in 0..<4 {
//        let dx = x + dx[i]
//        let dy = y + dy[i]
//        // 제어문 **
//        if  (dx>=0 && dy>=0 && dx<m && dy<n) && (arr[dx][dy] != 1) {
//            arr[dx][dy] = 1
//            area += dfs(x: dx, y: dy)
//        }
//    }
//    return area
//}
//
//var areaCount = 0
//for i in 0..<m {
//    for j in 0..<n {
//        if arr[i][j] != 1 {
//            arr[i][j] = 1
//            countArr.append(dfs(x: i, y: j))
//            areaCount += 1
//        }
//    }
//}
//
//countArr.sort()
//print(areaCount)
//for i in countArr {
//    print(i, terminator: " ")
//}
//
//
//
//
//
//


//
//  1012_유기농배추.swift
//  DFS&BFS
//
//  Created by 박희경 on 2023/03/07.
//

//import Foundation
//
//let t = Int(readLine()!)!
//
//for _ in 1...t {
//    let mnk: [Int] = readLine()!.split(separator: " ").map { Int(String($0))!}
//
//    let m = mnk[0], n = mnk[1], k = mnk[2]
//
//    var data: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
//
//    for _ in 1...k {
//        let veg = readLine()!.split(separator: " ").map {Int(String($0))!}
//
//        let x = veg[0]
//        let y = veg[1]
//
//        data[y][x] = 1
//    }
//
//    func dfs(x: Int, y: Int) -> Bool {
//        if (x<0 || x>=n || y<0 ||  y>=m ) {
//            return false
//        }
//
//        if data[x][y] == 1 {
//            data[x][y] = 0
//            dfs(x: x+1, y: y)
//            dfs(x: x-1, y: y)
//            dfs(x: x, y: y+1)
//            dfs(x: x, y: y-1)
//            return true
//        }
//
//        return false
//    }
//
//
//    var jirung: Int = 0
//
//    for i in 0...n-1 {
//        for j in 0...m-1 {
//            if dfs(x: i, y: j) {
//                jirung += 1
//            }
//        }
//    }
//
//    print(jirung)
//
//}
//
//
//
//
//

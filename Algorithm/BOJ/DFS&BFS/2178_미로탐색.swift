//
//  2178_미로탐색.swift
//  DFS&BFS
//
//  Created by 박희경 on 2022/11/01.
//

//import Foundation
//
//struct Queue<T> {
//    var data = [T]()
//    var index = 0
//
//    var isEmpty: Bool {
//        return !(data.count > index)
//    }
//
//    mutating func enqueue(_ element: T) {
//        data.append(element)
//    }
//
//    mutating func dequeue() -> T {
//        defer {
//            index += 1
//        }
//        return data[index]
//    }
//}
//
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//let n = input[0], m = input[1]
//var arr: [[Int]] = []
//var count: Int = 0
//
//
//for _ in 0..<n {
//    arr.append(readLine()!.map({ Int(String($0))!}))
//
//}
//
//
//let dx = [1, -1, 0, 0]
//let dy = [0, 0, 1, -1]
//
//func bfs(x: Int, y: Int) {
//
//    var queue = Queue<[Int]>()
//    queue.enqueue([x, y])
//
//    while !queue.isEmpty {
//        let now = queue.dequeue()
//        let x = now[0]
//        let y = now[1]
//
//        for i in 0...3 {
//            let nx = x + dx[i]
//            let ny = y + dy[i]
//
//            if nx<0 || ny<0 || nx>=n || ny >= m {
//                continue
//            }
//            if arr[nx][ny] == 0 {
//                continue
//            }
//
//            if arr[nx][ny] == 1 {
//                arr[nx][ny] = arr[x][y] + 1
//                queue.enqueue([nx, ny])
//            }
//        }
//
//    }
//}
//
//bfs(x: 0, y: 0)
//print(arr[n-1][m-1])
//


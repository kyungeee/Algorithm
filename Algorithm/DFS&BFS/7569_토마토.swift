//
//  7569_토마토.swift
//  DFS&BFS
//
//  Created by 박희경 on 2022/11/04.
//

//import Foundation
//
//
//// Queue
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
//
////  input
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let m = input[0], n = input[1], h = input[2]
//
//var arr: [[[Int]]] = Array(repeating: [[]], count: h)
//
//for i in 0..<h {
//    var box: [[Int]] = Array(repeating: [], count: n)
//
//    for j in 0..<n {
//        let tomato = readLine()!.split(separator: " ").map { Int(String($0))! }
//        box[j] = tomato
//    }
//    arr[i] = box
//}
//
//
//var infinit : [Int] = Array(repeating: 100000000, count: m)
//var distance: [[[Int]]] = Array(repeating: Array(repeating: infinit, count: n), count: h)
//
//var queue: Queue<[Int]> = Queue()
//for i in 0..<h {
//    for j in 0..<n {
//        for k in 0..<m {
//            if arr[i][j][k] == 1 {
//                queue.enqueue([i, j, k])
//                distance[i][j][k] = 0
//
//            }
//        }
//    }
//}
//
//// 좌표
//let dx = [1, -1, 0, 0, 0, 0]
//let dy = [0, 0, 1, -1, 0, 0]
//let dz = [0, 0, 0, 0, 1, -1]
//while !queue.isEmpty {
//
//    let now = queue.dequeue()
//    let z = now[0]
//    let x = now[1]
//    let y = now[2]
//
//    for i in 0..<6 {
//        let nx = x + dx[i]
//        let ny = y + dy[i]
//        let nz = z + dz[i]
//
//        // 최단경로
//        if (nx>=0 && ny>=0 && nz>=0 && nx<n && ny<m && nz<h) && (arr[nz][nx][ny] == 0) && (distance[nz][nx][ny] > distance[z][x][y] + 1){
//            queue.enqueue([nz,nx,ny])
//            distance[nz][nx][ny] = distance[z][x][y] + 1
//        }
//    }
//}
//
//var isAll = true
//var max = 0
//for i in 0..<h {
//    for j in 0..<n {
//        for k in 0..<m {
//            if distance[i][j][k] == 100000000  {
//                if arr[i][j][k] == -1 {
//                    continue
//                }
//                isAll = false
//                break
//            } else {
//                if max < distance[i][j][k] {
//                    max = distance[i][j][k]
//                }
//            }
//        }
//    }
//}
//
//if isAll == true {
//    print(max)
//} else {
//    print("-1")
//}

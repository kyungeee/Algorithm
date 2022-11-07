//
//  2583_영역구하기.swift
//  DFS&BFS
//
//  Created by 박희경 on 2022/11/02.
//

//import Foundation
//
////// Queue
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
//// input
//let nlr = readLine()!.split(separator: " ").map {Int(String($0))!}
//let n = nlr[0], l = nlr[1], r = nlr[2]
//
//var list = [[Int]]()
//for _ in 0..<n {
//    let arr: [Int] = readLine()!.split(separator: " ").map {Int(String($0))!}
//    list.append(arr)
//}
//
//var visited = Array(repeating: Array(repeating: false, count: n), count: n)
//let dx = [1, -1, 0, 0]
//let dy = [0, 0, 1, -1]
//
//func bfs(x: Int, y: Int) -> Bool {
//    var queue: Queue<[Int]> = Queue()
//    queue.enqueue([x, y])
//    visited[x][y] = true
//
//    var sum: Int = list[x][y]
//    var union: [[Int]] = [[x,y]]
//
//    while !queue.isEmpty {
//        let now = queue.dequeue()
//        let x = now[0]
//        let y = now[1]
//
//        for i in 0..<4 {
//            let nx = x + dx[i]
//            let ny = y + dy[i]
//
//            if (nx>=0&&ny>=0&&nx<n&&ny<n) &&  (l<=abs(list[x][y] - list[nx][ny])&&r>=abs(list[x][y] - list[nx][ny])) {
//                if !visited[nx][ny] {
//                    queue.enqueue([nx, ny])
//                    visited[nx][ny] = true
//                    sum+=list[nx][ny]
//                    union.append([nx, ny])
//                }
//            }
//        }
//    }
//
//    if union.count > 1 {
//        let avg: Int = Int(sum / union.count)
//        for i in union {
//            list[i[0]][i[1]] = avg
//        }
//        return true
//    } else {
//        return false
//    }
//}
//
//var rotation: Int = 0
//
//while true {
//    var ismove = false
//    for i in 0..<n {
//        for j in 0..<n {
//            if !visited[i][j] && bfs(x: i, y: j) == true {
//                ismove = true
//            }
//        }
//    }
//    if ismove == false {
//        break
//    }
//    rotation += 1
//    visited = Array(repeating: Array(repeating: false, count: n) , count: n)
//}
//
//print(rotation)



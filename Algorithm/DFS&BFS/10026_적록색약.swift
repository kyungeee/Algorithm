//
//  10026_적록색약.swift
//  DFS&BFS
//
//  Created by 박희경 on 2022/11/01.
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
//let n = Int(readLine()!)!
//
//
//var case1: Int = 0 // 적록색약일때
//var case2: Int = 0 // 적록색약이 아닐때
//var arr: [[String]] = [] // input 배열
//
//for _ in 0..<n {
//    arr.append(readLine()!.map({ String($0) }))
//}
//
//// 상하좌우
//let dx = [1, -1, 0, 0]
//let dy = [0, 0, 1, -1]
//
//
//var count: [Int] = Array(repeating: 0, count: 4) // [R, G, B, RG] count 담을 배열
//let colors: [String] = ["R", "G", "B", "RG"] // 얘는 이따 쓰일 예정
//
//
//// bfs func
//func bfs(x: Int, y: Int, color: Int) {
//    var queue = Queue<[Int]>()
//    queue.enqueue([x, y])
//
//    if arr[x][y] == colors[color] {
//
//        if color == 0 || color == 1 {
//            arr[x][y] = "RG"
//        } else {
//            arr[x][y] = "X"
//        }
//
//        while !queue.isEmpty {
//            let now = queue.dequeue()
//            let x = now[0]
//            let y = now[1]
//
//            for i in 0...3 {
//                let nx = x + dx[i]
//                let ny = y + dy[i]
//
//                if nx<0 || ny<0 || nx>=n || ny >= n {
//                    continue
//                } // 배열 넘어가지 않게
//
//                if arr[nx][ny] != colors[color] {
//                    continue
//                } // 다르면 continue
//
//                if colors[color] == arr[nx][ny] {
//                    queue.enqueue([nx, ny])
//                    if color == 0 || color == 1 {
//                        arr[nx][ny] = "RG"
//                    } else {
//                        arr[nx][ny] = "X"
//                    }
//                } // 방문처리
//
//            } // for 문
//        } // while
//        count[color] += 1
//    }// if
//} // while
//
//
//for i in 0..<n {
//    for j in 0..<n {
//        bfs(x: i, y: j, color: 0)
//        bfs(x: i, y: j, color: 1)
//        bfs(x: i, y: j, color: 2)
//    }
//}
//
//for i in 0..<n {
//    for j in 0..<n {
//        bfs(x: i, y: j, color: 3)
//    }
//}
//
//let output1 = count[0] + count[1] + count[2]
//let output2 = count[2] + count[3]
//print(output1 , terminator: " ")
//print(output2)


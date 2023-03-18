//
//  14940_쉬운최단거리.swift
//  Algorithm
//
//  Created by 박희경 on 2023/03/19.
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
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//let N = input[0], M = input[1]
//
//var arr: [[Int]] = []
//
//for _ in 0..<N {
//    arr.append(readLine()!.split(separator: " ").map { Int(String($0))!})
//}
//
//
//var visited = Array(repeating: Array(repeating: false, count: M), count: N)
//
//// 상하좌우
//let dx = [1, -1, 0, 0]
//let dy = [0, 0, 1, -1]
//
//
//func bfs(start: [Int]) {
//    var queue = Queue<[Int]>()
//    queue.enqueue([start[0], start[1]])
//    visited[start[0]][start[1]] = true
//
//    while !queue.isEmpty {
//        let now = queue.dequeue()
//        let x = now[0]
//        let y = now[1]
//        let t = arr[x][y]
//
//        for i in 0...3 {
//            let nx = x + dx[i]
//            let ny = y + dy[i]
//            let nt = t + 1
//
//            if nx>=0&&ny>=0&&nx<N&&ny<M {
//                if (arr[nx][ny] == 1) && (!visited[nx][ny]) {
//                    queue.enqueue([nx, ny])
//                    arr[nx][ny] = nt
//                    visited[nx][ny] = true
//                }
//            }
//        }
//    }
//}
//
//
//if let rowIndex = arr.firstIndex(where: { $0.contains(2) }), let colIndex = arr[rowIndex].firstIndex(of: 2) {
//    // 시작지점 값은 0으로 세팅.
//    arr[rowIndex][colIndex] = 0
//    // 찾은 시작지점부터 bfs 로 최단거리 구함.
//    bfs(start: [rowIndex, colIndex])
//}
//
//for i in 0..<N {
//    for j in 0..<M {
//        if !visited[i][j] && arr[i][j] == 1 {
//            print("-1", terminator: " ")
//        } else {
//            print("\(arr[i][j])", terminator: " ")
//        }
//    }
//    print("")
//}
//

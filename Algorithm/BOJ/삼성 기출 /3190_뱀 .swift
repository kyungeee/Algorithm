//
//  뱀 .swift
//  Algorithm
//
//  Created by 박희경 on 2023/07/30.
//


import Foundation

//class Deque<T> {
//    var enQueue: [T]
//    var deQueue: [T] = []
//
//    var count: Int {
//        return enQueue.count + deQueue.count
//    }
//
//    var isEmpty: Bool {
//        return enQueue.isEmpty && deQueue.isEmpty
//    }
//
//    init(_ queue: [T]) {
//        enQueue = queue
//    }
//
//    func pushFirst(_ element: T) {
//        deQueue.append(element)
//    }
//
//    func pushLast(_ element: T) {
//        enQueue.append(element)
//    }
//
//    func popFirst() -> T {
//        if deQueue.isEmpty {
//            deQueue = enQueue.reversed()
//            enQueue.removeAll()
//        }
//        return deQueue.popLast()!
//    }
//
//    func popLast() -> T {
//        if enQueue.isEmpty {
//            enQueue = deQueue.reversed()
//            deQueue.removeAll()
//        }
//        return enQueue.popLast()!
//    }
//
//    func peekFirst() -> T? {
//        return deQueue.isEmpty ? enQueue.first : deQueue.last
//    }
//
//    func peekLast() -> T? {
//        return enQueue.isEmpty ? deQueue.first : enQueue.last
//    }
//}
//
//
//func solution() {
//    let n = Int(readLine()!)!
//    let k = Int(readLine()!)!
//    var board: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
//    var turn: [Int : String] = [:]
//
//    for _ in 0..<k {
//        let index = readLine()!.components(separatedBy: " ").map {  Int($0)! }
//        board[index[0]-1][index[1]-1] = -1
//    }
//
//    let l = Int(readLine()!)!
//    for _ in 0..<l {
//        let input = readLine()!.components(separatedBy: " ")
//        turn[Int(input[0])!] = input[1]
//    }
//
//    let result = moveSnake(board: board, turn: turn)
//    print(result)
//}
//
//solution()
//
//// 이동 방향
//// D: 상 우 하 좌
//// L: 상 좌 하 우
//func moveSnake(board: [[Int]], turn: [Int : String]) -> Int {
//    let d: [[Int]] = [[-1, 0], [0, 1], [1, 0], [0, -1]]
//    let l: [[Int]] = [[-1, 0], [0, -1], [1, 0], [0, 1]]
//
//    var board = board
//    let turn = turn
//
//    var deq: Deque<[Int]> = Deque([]) // 뱀 저장
//    let head: [Int] = [0, 0]
//    deq.pushFirst(head)
//
//    var direction = [0, 1] // 방향 init
//    var time = 0
//
//    while true {
//
//        let now = deq.peekFirst()!
//        let x = now[0]
//        let y = now[1]
//
//        if let type = turn[time] {
//            // move direction
//            if type == "D" {
//                let index = (d.firstIndex(of: direction)! + 1) % 4
//                direction = d[index]
//            } else {
//                let index = (l.firstIndex(of: direction)! + 1) % 4
//                direction = l[index]
//            }
//        }
//
//        let nx = x + direction[0]
//        let ny = y + direction[1]
//
//        time += 1
//
//        if nx < 0 || nx > board[0].count - 1 || ny < 0 || ny > board[0].count - 1 {
//            // index out of range
//            break
//        } else if deq.enQueue.contains([nx, ny]) || deq.deQueue.contains([nx, ny]) {
//            // crashed
//            break
//        } else {
//            // move
//            if board[nx][ny] == -1 {
//                board[nx][ny] = 0 // 사과 없앰
//                deq.pushFirst([nx, ny])
//            } else {
//                deq.pushFirst([nx, ny])
//                deq.popLast()
//            }
//        }
//    }
//
//    return time
//}
//

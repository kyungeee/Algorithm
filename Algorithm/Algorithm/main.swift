//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//

//// Queue
struct Queue<T> {
    var data = [T]()
    var index = 0
    
    var isEmpty: Bool {
        return !(data.count > index)
    }
    
    mutating func enqueue(_ element: T) {
        data.append(element)
    }
    
    mutating func dequeue() -> T {
        defer {
            index += 1
        }
        return data[index]
    }
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let N = input[0], M = input[1], T = input[2]

var arr: [[Int]] = []

for _ in 0..<N {
    arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

// 방문체크
var visited = Array(repeating: Array(repeating: Array(repeating: false, count: 2), count: M), count: N)


var case1: Int = 0
var case2 : Int = 0

// 1. 그람갖고 가는경우 -> 그람갖기전 후 isgram: bool
// 2. 그람없이 가는경우 ->

// 상하좌우
let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]


// 0: 그람 x, 1: 그람 o
func bfs2() {
    var queue = Queue<[Int]>()
    queue.enqueue([0, 0, 0, 0]) // x, y, gram, t
    visited[0][0][0] = true // x, y, gram
    
    while !queue.isEmpty  {
        let now = queue.dequeue()
        let x = now[0]
        let y = now[1]
        let gram = now[2]
        let t = now[3]
        
        // Fail 되는 순간: 입력받은
        
        if x == N-1 && y == M-1 {
                print("\(t)")
        }
        
//        if goToGram && arr[x][y] == 2 {
//            num += 1
//            print("+++++ bfs \(num)")
//            return bfs2(goToGram: false, haveGram: true, start: [x, y], count: num) // 3
//        } else {
//            if x == m-1 && y == n-1 {
//                return num
//            }
//        }
        
        if x == N-1 && y == M-1 {
            print("t: \(t)")
        }
        
        for i in 0...3 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            let nt = t + 1
            print("nx: \(nx), ny: \(ny)")
            
//            if (nx>=0&&ny>=0&&nx<N&&ny<M) && (arr[nx][ny] == 0) {
//                if !visited[nx][ny] {
//                    queue.enqueue([nx, ny, nt])
//                    visited[nx][ny] = true
//                }
//            } // if
            
        } // for
      
    }
    
}


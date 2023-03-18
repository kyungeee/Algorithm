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

// 상하좌우
let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]


func bfs() {
    var queue = Queue<[Int]>()
    
    /// 1. 그람 획득하고 가는 케이스 & 2. 그람없이 가는 케이스  테스트하기 위해 gram 에 대한 index 추가
    /// 0: 그람 x , 1: 그람 o
    queue.enqueue([0, 0, 0, 0]) // x, y, gram, t
    visited[0][0][0] = true // x, y, gram
    
    while !queue.isEmpty  {
        let now = queue.dequeue()
        let x = now[0]
        let y = now[1]
        let gram = now[2]
        let t = now[3]
        
        // arr[nx][ny] 에 도착하기 전 T가 초과된 경우.
        if t>T {
            print("Fail")
            return
        }
        
        /// 케이스 1, 2 가 동시에 돌아가기 때문에 먼저 큐에서 꺼내진 케이스의 t 가 최단거리
        if x == N-1 && y == M-1 {
            print("\(t)")
            return
        }
        
        for i in 0...3 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            let nt = t + 1
            
            if nx>=0&&ny>=0&&nx<N&&ny<M {
                // 그람을 갖고있을때
                if (gram != 00) && (!visited[nx][ny][1]) {
                    queue.enqueue([nx, ny, 1, nt])
                    visited[nx][ny][1] = true
                }
                
                // 그람을 갖고있지 않을때
                else {
                    if (arr[nx][ny] == 0) && (!visited[nx][ny][0]) {
                        // 0일때만 방문표시
                        queue.enqueue([nx, ny, 0, nt])
                        visited[nx][ny][0] = true
                    } else if (arr[nx][ny] == 2) && (!visited[nx][ny][0]) {
                        // 그람 획득
                        queue.enqueue([nx, ny, 1, nt])
                        visited[nx][ny][1] = true
                    }
                }
            }
        } // for
      
    } // while
    
    // arr 탐색이 끝났는데 arr[n-1][m-1]에 도달하지 못한경우.
    print("Fail")
    
}

bfs()

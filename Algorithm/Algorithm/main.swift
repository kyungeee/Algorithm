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

let n = Int(readLine()!)! // n x n

var arr: [[Int]] = []

for _ in 0..<n {
    arr.append(readLine()!.map({ Int(String($0))! }))
}

var home = [Int]()

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

func bfs(x: Int, y: Int){
    
    var queue = Queue<[Int]>()
    queue.enqueue([x, y])
    var num = 1
    
    while !queue.isEmpty {
        let now = queue.dequeue()
        let x = now[0]
        let y = now[1]
        
        for i in 0...3 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx<0 || ny<0 || nx>=n || ny >= n {
                continue
            }
            
            if arr[nx][ny] == 0 {
                continue
            }
            
            if arr[nx][ny] == 1 {
                num += 1
                queue.enqueue([nx, ny])
                arr[nx][ny] = 0 // 방문처리
            }
        }
    }
    
    if num >= 1 {
        home.append(num)
    }
}

for i in 0..<n {
    for j in 0..<n {
        if arr[i][j] == 1 {
            arr[i][j] = 0
            bfs(x: i, y: j)
        }
    }
}

print(home.count)
for i in home.sorted() {
    print(i)
}

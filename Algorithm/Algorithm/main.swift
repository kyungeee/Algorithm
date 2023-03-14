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

let n = input[0], m = input[1], t = input[2]

var arr: [[Int]] = []

for _ in 0..<m {
    arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

// 상하좌우
let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]


// 방문체크
var visited = Array(repeating: Array(repeating: false, count: m), count: n)



//func bfs(x: Int, y: Int, gram: Bool) {
//
//    var queue = Queue<[Int]>()
//    queue.enqueue([x, y])
//    var time = 0
//
//    // 그람을 갖고있냐 없냐 판단.
//    // 그람을 획득한다면 다시 그 노드에서부터 bfs 시작
//    while !queue.isEmpty {
//        let now = queue.dequeue()
//        let x = now[0]
//        let y = now[1]
//
//        for i in 0...3 {
//            let nx = x + dx[i]
//            let ny = y + dy[i]
//
//            if (nx>=0&&ny>=0&&nx<n&&ny<m) {
//                if gram == false {
//                    if arr[nx][ny] == 0 {
//                        queue.enqueue([nx, ny])
//                        arr[nx][ny] = 3 // 방문처리
//                        time+=1
//                    }
//
//                    if arr[nx][ny] == 2 {
//                        queue.enqueue([nx, ny])
//                        arr[nx][ny] = 3 // 방문처리
//                        time+=1
//                    }
//                } else {
//                    if arr[nx][ny] == 0 || arr[nx][ny] == 1 {
//                        queue.enqueue([nx, ny])
//                        arr[nx][ny] = 3 // 방문처리
//                        time+=1
//                    }
//                }
//            } // if
//        } // for
//        time += 1
//    } // while
//
//    print("time: \(time)")
//    print("arr: \(arr)")
//
//    if time <= t && arr[n-1][m-1] == 3 {
//        output = "\(time)"
//    }
//}

var case1: Int = 0
var case2 : Int = 0

func bfs2(goToGram: Bool, haveGram: Bool, start: [Int], count: Int) -> Int{
    var queue = Queue<[Int]>()
    queue.enqueue([start[0], start[1]])
    
    var num  = count
    // 1. 그램이 아닌 공주한테 가는 경우 + 그램을 갖고있지 않은경우 F F [0, 0]
    
    // 2. 그램으로 가는 경우 + 그램을 아직 가지고있지 않은경우 T F [0, 0]
    // 3. 공주한테 가는경우 + 그램을 갖고있는 경우 F T [그램좌표]
    
    while !queue.isEmpty {
        let now = queue.dequeue()
        let x = now[0]
        let y = now[1]
        
        if goToGram && arr[x][y] == 2 {
            num += 1
            print("+++++ bfs \(num)")
            return bfs2(goToGram: false, haveGram: true, start: [x, y], count: num+1) // 3
        } else {
            if x == m-1 && y == n-1 {
                return n+1
            }
        }
        
        for i in 0...3 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if (nx>=0&&ny>=0&&nx<n&&ny<m) && (arr[nx][ny] == 0) {
                if !visited[nx][ny] {
                    queue.enqueue([nx, ny])
                    visited[nx][ny] = true
                }
            } // if
        } // for
        num += 1
        print(num)
    }
    
    return num
}

let result = bfs2(goToGram: true, haveGram: false, start: [0, 0], count: 0)
print(result)



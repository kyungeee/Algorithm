//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//



import Foundation


/// 처음에 dfs 로 풀었으나 런타임오류가 계속나서 ㅂㄷㅂㄷ bfs로 바꿔서 제출함.
/// dfs, bfs 문제가 아니라 함수의 리터값을 메인에서 안받아 오는 방식으로 하면 백준 런타임 오류가 발생하는듯.
/// 로직문제는 아녔다 하하
///

// 공기와 접촉된 칸 -> 한시간이 지나면 녹아 없어짐
// 구멍을 둘러싼 치즈가 녹아서 구멍이 열리면 구멍속으로 공기가 들어감.
// C 로 표시된 부분 한시간 후 녹음 -> C로 표시된 부분은 공기와 접촉됐음.

// 치즈가 모두 녹아 없어지는데 걸리는시간 & 모두 녹기 한시간 전에 남아있는 치즈조각이 놓여있는 칸의 개수


let input = readLine()!.split(separator: " ").map { Int(String($0))!}

let height = input[0], width = input[1]

var list: [[Int]] = []

var cheeze: Int = 0

for _ in 0..<height {
    let arr = readLine()!.split(separator: " ").map { Int(String($0))!}
    list.append(arr)
    
    cheeze += arr.filter { $0 == 1 }.count
}

var cheezeArr: [Int] = []
var visited = Array(repeating: Array(repeating: false, count: width), count: height)

func dfs(x: Int, y: Int) {
    
    if (x<0 || x>=height || y<0 ||  y>=width ) {
        return
    }
    
    if list[x][y] == 1 {
        list[x][y] = 0
        cheeze -= 1
        visited[x][y] = true
    } else {
        if visited[x][y] == false {
            visited[x][y] = true
            dfs(x: x+1, y: y)
            dfs(x: x-1, y: y)
            dfs(x: x, y: y+1)
            dfs(x: x, y: y-1)
        }
    }
    
    return
}

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

func bfs() -> Int {
    var queue = [[Int]]()
    queue.append([0, 0])
    visited[0][0] = true
    var count = 0
    
    while !queue.isEmpty {
        let now = queue.removeFirst()
        let x = now[0]
        let y = now[1]
        
        for i in 0...3 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx<0 || ny<0 || nx>=height || ny >= width {
                continue
            }
            
            if list[nx][ny] == 1 {
                list[nx][ny] = 0
                count += 1
                visited[nx][ny] = true
            } else {
                if visited[nx][ny] == false {
                    visited[nx][ny] = true
                    queue.append([nx, ny])
                }
            }
        }
    }
    
    return count
}

var time = 0
var cheezeCnt = 100

while cheezeCnt != 0 {
    cheezeCnt = bfs()
    cheezeArr.append(cheezeCnt)
    time += 1
    visited = Array(repeating: Array(repeating: false, count: width), count: height)
}

print(time - 1)
print(cheezeArr[time - 2])


//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//



import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }


let n = input[0], m = input[1]
var list: [[Int]] = []
var walls: [[Int]] = []
for _ in 0..<n {
    let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
    list.append(arr)
}

for i in 0..<n {
    for j in 0..<m {
        if list[i][j] == 1 {
            walls.append([i, j])
        }
    }
}

let info = readLine()!.split(separator: " ").map { Int(String($0))! }
let height = info[0], width = info[1], sr = info[2] - 1, sc = info[3] - 1, fr = info[4] - 1, fc = info[5] - 1
let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]


func check(x: Int, y: Int) -> Bool {
    // 이동한 시작점을 기준으로 맵이 밖으로 나가는가 Check
    if x + height - 1 >= n  || y + width - 1 >= m  {
        return false
    }
    
    // 이동한 시작점을 기준으로한 직사각형 안에 벽이 있는가 Check
    /// 처음 이 부분에서 시작점 x, y 를 기준으로 한 직사각형 범위 내에 1이 있는지 이중 for 문을 사용하여 돌렸다.
    /// 함수가 실행될때마다 전체 리스트들 ( n * m) 케이스들을 width * height 만큼 테스트 하는것이기 때문에 오래걸림 .
    /// 해결방법1 :  walls 라는 배열(1인 리스트 좌표를 저장한 배열 )을 따로 저장해두어 check 함수가 실행될때는
    /// 시작점에서 만들어진 직사각형 범위 내에 벽이 있는지 범위체크만 해주면 됨
    /// O(n*m*h*w) -> O(n*m*walls)
    for wall in walls {
        if x <= wall[0] && wall[0] < x + height && y <= wall[1] && wall[1] < y + width {
            return false
        }
    }
    
    return true
}



var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: m), count: n)

dp[0][0] = list[0][0]
for i in 1..<n {
    dp[i][0] = dp[i-1][0] + list[i][0]
}
for j in 1..<m {
    dp[0][j] = dp[0][j-1] + list[0][j]
}

/// 해결방법 2: 각 리스트의 지점에서 만들 수 있는 직사각형에서 안에 있는 벽의 개수를 미리 dp 로 계산해둠
/// ex) (0,0) ~ (1,1) 사각형 안에 벽의 개수 -> (0,0) ~ (1,0) 개수 +  (0,0) ~ (0, 1) 개수 + (1,1)  => 중복 연산 => 누적합으로 표현 가능
func dp(r: Int, c: Int) -> Int {
    if r<0 || c<0 {
        return 0
    }
    
    if dp[r][c] != -1 {
        return dp[r][c]
    }
    
    dp[r][c] = dp(r: r-1,c: c) + dp(r: r, c: c-1) - dp(r: r-1, c: c-1) + list[r][c]
    
    return dp[r][c]
}


var visited = Array(repeating: Array(repeating: false, count: m), count: n)

func bfs() -> Int {
    var queue = [[Int]]()
    queue.append([sr, sc, 0])
    visited[sr][sc] = true
    
    while !queue.isEmpty {
        let now = queue.removeFirst()
        let x = now[0], y = now[1], path = now[2]
        
        if x == fr && y == fc {
            return path
        }
        
        for i in 0...3 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx<0 || ny<0 || nx >= n || ny >= m {
                continue
            }
            
            if !check(x: nx, y: ny) {
                continue
            }
            
            if !visited[nx][ny] {
                visited[nx][ny] = true
                queue.append([nx, ny, path + 1])
            }
        }
    }
    
    return -1
}


// + dp ver
func bfs2() -> Int {
    var queue = [[Int]]()
    queue.append([sr, sc, 0])
    visited[sr][sc] = true
    
    while !queue.isEmpty {
        let now = queue.removeFirst()
        let x = now[0], y = now[1], path = now[2]
        
        if x == fr && y == fc {
            return path
        }
        
        for i in 0...3 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx<0 || ny<0 || nx >= n || ny >= m {
                continue
            }
            
            if nx + height - 1 >= n  || ny + width - 1 >= m  {
                continue
            }
            
            if !visited[nx][ny] {
                let a = nx, b = ny, c = nx + height - 1, d = ny + width - 1
                
                // dp 사용할 경우 check하는 로직에서 사용 시간복잡도 O(1)로 줄어듬.
                let count = dp(r: c, c: d) - dp(r: a-1, c: d) - dp(r: c, c: b-1) + dp(r: a-1, c: b-1)
                
                if count > 0 {
                    continue
                }
                
                visited[nx][ny] = true
                queue.append([nx, ny, path + 1])
            }
        }
    }
    
    return -1
}



//print(bfs())

print(bfs2())

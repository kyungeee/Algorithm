import Foundation

func solution(_ places:[[String]]) -> [Int] {
    var result: [Int] = []
    
    for i in places {
        var list: [[String]] = []
        for j in i {
            let arr = j.map{String($0)}
            list.append(arr)
        }
        
        var isOk: Bool = true
        for x in 0..<5 {
            for y in 0..<5 {
                if list[x][y] == "P" {
                    if !bfs(x, y, list) {
                        isOk = false
                    }
                }
            }
        }
        
        if isOk {
            result.append(1)
        }else {
            result.append(0)
        }
    }
    
    return result
}

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]
func bfs(_ startX: Int, _ startY: Int, _ list: [[String]]) -> Bool {
    var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: 5), count: 5)
    var queue = [[Int]]()
    queue.append([startX, startY, 0])
    
    visited[startX][startY] = true
    
    while !queue.isEmpty {
        let now = queue.removeFirst()
        let x = now[0]
        let y = now[1]
        let dis = now[2]
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if (nx>=0 && ny>=0 && nx < 5 && ny < 5) && (list[nx][ny] != "X") {
              if !visited[nx][ny] {
                  
                  if list[nx][ny] == "O" && dis + 1 < 2 {
                      queue.append([nx, ny, dis + 1])
                      visited[nx][ny] = true
                  }
                  
                  if list[nx][ny] == "P" {
                      return false
                  }
              }
            }
        }
    }
    
    return true
}

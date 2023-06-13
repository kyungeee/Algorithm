//
//  21610_마법사상어와비바라기.swift
//  Algorithm
//
//  Created by 박희경 on 2023/06/12.
//

import Foundation

// 비바라기 (N, 1), (N, 2), (N-1, 1), (N-1, 2)에 비구름이 생긴다.
// 구름이동 M번 명령 i 번째 이동명령은 (x:di, y:si) di 방향으로 si칸 이동
// 비바라기 칸 바구니 물 + 1 -> 구름 없어짐
// 물복사 버그마법

//let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//let n = nm[0], m = nm[1]
//var arr: [[Int]] = []
//var move: [[Int]] = []
//
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    arr.append(input)
//}
//
//for _ in 0..<m {
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    move.append(input)
//}
//
//
//let dxdy = [[0, -1], [-1, -1], [-1, 0], [-1, 1], [0, 1], [1, 1], [1, 0], [1, -1]]
//
//let diagonal = [[-1, -1], [-1, 1], [1, 1], [1, -1]]
//
//var cloud: [[Int]] = [[n-1, 0], [n-1, 1], [n-2, 0], [n-2,1]] // 비구름
//
//for i in move {
//    let dir = i[0] // 방향
//    let dis = i[1] // 거리
//    for j in 0..<cloud.count {
//        let x = cloud[j][0], y = cloud[j][1]
//
//        var nx = (x + dxdy[dir-1][0] * dis) % n
//        var ny = (y + dxdy[dir-1][1] * dis) % n
//
//        if nx < 0 {
//            nx += n
//        } else if nx >= n {
//            nx -= n
//        }
//
//        if ny < 0 {
//            ny += n
//        } else if ny >= n {
//            ny -= n
//        }
//
//        cloud[j][0] = nx
//        cloud[j][1] = ny
//
//        arr[nx][ny] += 1 // 비 + 1
//    }
//
//    for k in cloud {
//        let x = k[0]
//        let y = k[1]
//
//        // 대각선 검사
//        for l in diagonal {
//            let nx = x + l[0]
//            let ny = y + l[1]
//
//            if nx<0||ny<0||nx>=n||ny>=n {
//                continue
//            }
//            if arr[nx][ny] > 0 {
//                arr[x][y] += 1
//            }
//        }
//    }
//
//    var nextCloud: [[Int]] = []
//
//    for row in 0..<n {
//        for col in 0..<n {
//            if arr[row][col] >= 2 {
//                if !cloud.contains([row, col]) {
//                    arr[row][col] -= 2
//                    nextCloud.append([row, col])
//                }
//            }
//        }
//    }
//
//    cloud = nextCloud
//
//}
//
//let sum = arr.flatMap { $0 }.reduce(0, +)
//print(sum)
//

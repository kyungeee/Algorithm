//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//

import Foundation


let n = Int(readLine()!)!

var studentArr: [[Int]] = []
var studentDic: [Int: [Int]] = [:]

for _ in 0..<n*n {
    let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    studentArr.append(input)
    
    studentDic[input[0]] = Array(input.dropFirst())
}

var seatArr = Array(repeating: Array(repeating: 0, count: n), count: n)

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]


// 1. 비어있는 칸 중에서 좋아하는 학생이 인접한 칸에 가장 많은 칸으로 자리를 정한다.

// 2. 1을 만족하는 칸이 여러 개이면, 인접한 칸 중에서 비어있는 칸이 가장 많은 칸으로 자리를 정한다.

// 3. 2를 만족하는 칸도 여러 개인 경우에는 행의 번호가 가장 작은 칸으로, 그러한 칸도 여러 개이면 열의 번호가 가장 작은 칸으로 자리를 정한다.


func selectSeat(student: Int, likeStudents: [Int]) {

    var maxLike: Int = 0
    var maxEmpty: Int = 0
    var x: Int = 10000000
    var y: Int = 10000000
    
    for i in 0..<n {
        for j in 0..<n {
            
            var like = 0
            var empty = 0
            
            // 이미 자리가 정해져 있는 경우 제외
            if seatArr[i][j] != 0 {
                continue
            }
            
            // 상 하 좌 우 인접한 인덱스 탐색
            for k in 0...3 {
                let nx = i + dx[k]
                let ny = j + dy[k]
                
                // 배열 넘어가지 않게 처리
                if nx<0 || ny<0 || nx>=n || ny >= n {
                    continue
                }

                // 자리가 비어있는 경우
                if seatArr[nx][ny] == 0 {
                    empty += 1
                    continue
                }
                
                // 좋아하는 학생이 있는 경우
                if likeStudents.contains(seatArr[nx][ny]) {
                    like += 1
                }
                
            }
            
            
            // 1번 조건: 좋아하는 학생이 제일 많은 자리 update
            if like > maxLike {
                x = i
                y = j
                maxLike = like
                maxEmpty = empty
            }
            // 1번 조건 불충족시 2번 조건으로 넘어가기
            if like == maxLike {
                if empty > maxEmpty {
                    x = i
                    y = j
                    maxLike = like
                    maxEmpty = empty
                    
                }
                 
                // 2번 조건 불충족시 3번 조건으로 넘어가기
                if empty == maxEmpty {
                    // 행의 번호가 작은 인덱스로 update
                    if i < x {
                        x = i
                        y = j
                        maxLike = like
                        maxEmpty = empty
                    }
                    else if i == x {
                        // 열의 번호가 작은 인덱스로 update
                        if j < y {
                            x = i
                            y = j
                            maxLike = like
                            maxEmpty = empty
                        }
                    }
                }
            }
        } // for1
    } // for2
    
    seatArr[x][y] = student
}

func calcSatisfaction() -> Int {
    var sum = 0
    
    for i in 0..<n {
        for j in 0..<n {
            var num: Int = 0
            for k in 0...3 {
                let nx = i + dx[k]
                let ny = j + dy[k]
                
                // 배열 넘어가지 않게 처리
                if nx<0 || ny<0 || nx>=n || ny >= n {
                    continue
                }
                
                if let students = studentDic[seatArr[i][j]], students.contains(seatArr[nx][ny]) {
                    num += 1
                }
            }
            
            switch num {
            case 0 :
                sum += 0
            case 1:
                sum += 1
            case 2:
                sum += 10
            case 3:
                sum += 100
            default:
                sum += 1000
            }
            
        }
    }
    
    return sum
}

for i in studentArr {
    selectSeat(student: i[0], likeStudents: Array(i.dropFirst()))
    
}


print("\(calcSatisfaction())")

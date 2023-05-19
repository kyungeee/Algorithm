//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//

import Foundation


var bingoArr = Array(repeating: Array(repeating: 0, count: 5), count: 5)
var callArr: [Int] = []

for i in 0..<5 {
    let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    bingoArr[i] = input
}

for _ in 0..<5 {
    let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    callArr.append(contentsOf: input)
}

// 왼쪽 아래에서 오른쪽 위로 가는 대각선 빙고 체크
func isUpDiagonal() -> Int {
    var upDiagonal: Bool = true
    
    for i in 0...4 {
        if bingoArr[i][4-i] != 0 {
            upDiagonal = false
        }
    }
    
    return upDiagonal ? 1 : 0
}

// 왼쪽 위에서 오른쪽 아래로 가는 대각선 빙고 체크
func isDownDiagonal() -> Int {
    var downDiagonal: Bool = true
    
    for i in 0...4 {
        if bingoArr[i][i] != 0 {
            downDiagonal = false
        }
    }
    
    return downDiagonal ? 1 : 0
}

// 가로직선, 세로직선 빙고 체크
func isStraight(row: Int, col: Int) -> Int {
    var rowStraight: Bool = true
    var colStraight: Bool = true
    
    for i in 0...4 {
        if bingoArr[row][i] != 0 {
            rowStraight = false
        }
        
        if bingoArr[i][col] != 0{
            colStraight = false
        }
    }
    
    if rowStraight == true && colStraight == true {
        return 2
    } else if rowStraight == true || colStraight == true  {
        return 1
    } else {
        return 0
    }
}

var straighBingoNumber = 0
var upDiagonalBingo: Int = 0
var downDiagonalBingo: Int = 0


// for 문으로 2차원 배열에서 특정 원소가 있는 인덱스를 찾는 방법
func bingo(call: Int) -> Bool{
    var bingo: Bool = false
    
    for i in 0..<5 {
        for j in 0..<5 {
            if bingoArr[i][j] == call {
                bingoArr[i][j] = 0
                
                if upDiagonalBingo == 0 {
                    upDiagonalBingo = isUpDiagonal()
                }
                
                if downDiagonalBingo == 0 {
                    downDiagonalBingo = isDownDiagonal()
                }
                
                straighBingoNumber += isStraight(row: i, col: j)
                
                /// 첫번째 시도 틀렸습니다 나온 이유: 반례를 찾아보니 하나가 체크 되면서 2개의 빙고가 동시에 생겨나는 경우가 있을 수 있음.
                /// 즉 체크를 하면서 3빙고가 아니라 4빙고가 되는경우
                /// 따라서 straighBingoNumber + upDiagonalBingo + downDiagonalBingo == 3 가 아니라 >= 3으로 해주어야함.
                if straighBingoNumber + upDiagonalBingo + downDiagonalBingo >= 3 {
                    bingo = true
                    break
                }
            }
        }
    }
    
    return bingo
}


// firstIndex와 contains 메서드를 사용하여 2차원 배열에서 특정 원소가 있는 인덱스를 찾는 방법
func bingo2(call: Int) -> Bool {
    var bingo: Bool = false
    
    if let rowIndex = bingoArr.firstIndex(where: {$0.contains(call) }),
       let columnIndex = bingoArr[rowIndex].firstIndex(of: call) {
        if bingoArr[rowIndex][columnIndex] == call {
            bingoArr[rowIndex][columnIndex] = 0
            
            if upDiagonalBingo == 0 {
                upDiagonalBingo = isUpDiagonal()
            }
            
            if downDiagonalBingo == 0 {
                downDiagonalBingo = isDownDiagonal()
            }
            
            straighBingoNumber += isStraight(row: rowIndex, col: columnIndex)
            
            /// 첫번째 시도 틀렸습니다 나온 이유: 반례를 찾아보니 하나가 체크 되면서 2개의 빙고가 동시에 생겨나는 경우가 있을 수 있음.
            /// 즉 체크를 하면서 3빙고가 아니라 4빙고가 되는경우
            /// 따라서 straighBingoNumber + upDiagonalBingo + downDiagonalBingo == 3 가 아니라 >= 3으로 해주어야함.
            if straighBingoNumber + upDiagonalBingo + downDiagonalBingo >= 3 {
                bingo = true
                return bingo
            }
        }
    }
    
    return bingo
}


var number: Int = 0

for i in callArr {
    number += 1
    let isBingo = bingo(call: i)
    
    if isBingo {
        print("\(number)")
        break
    }
}






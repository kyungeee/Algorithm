//
//  2447_별찍기10.swift
//  Algorithm
//
//  Created by 박희경 on 2022/12/06.
//

//import Foundation
//
//let n = Int(readLine()!)! // 27
//var arr: [[String]] = Array(repeating: Array(repeating: " ", count: n), count: n)
//
//// 9
//func recur(xstart: Int, ystart: Int, xend: Int, yend: Int) {
//
//    // 2
//    let sum = (xend - xstart) / 3
//
//    if sum == 0 {
//        for i in xstart...xend {
//            for j in ystart...yend {
//                if (i == xstart + 1 && j == ystart + 1) {
//                    arr[j][i] = " "
//                }else {
//                    arr[j][i] = "*"
//                }
//            }
//        }
//        return
//    }
//
//    var xs = xstart
//    var xe = xs + sum
//
//    for i in 0..<3 {
//        var ys = ystart
//        var ye = ys + sum
//        for j in 0..<3 {
//            if i == 1 && j == 1 {
//                ys = ye + 1
//                ye = ys + sum
//                continue
//            }
//            recur(xstart: xs, ystart: ys, xend: xe, yend: ye)
//            ys = ye + 1
//            ye = ys + sum
//        }
//        xs = xe + 1
//        xe = xs + sum
//    }
//}
//
//
//recur(xstart: 0, ystart: 0, xend: n-1  , yend: n-1)
//
//for i in 0..<n {
//    for j in 0..<n {
//        print("\(arr[i][j])", terminator: "")
//    }
//    print("")
//}
//

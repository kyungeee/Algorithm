//
//  20207_달력 .swift
//  Algorithm
//
//  Created by 박희경 on 2023/06/06.
//



//import Foundation
//
//
//let n = Int(readLine()!)!
//
//var arr: [Int] = Array(repeating: 0, count: 366)
//
//for _ in 0..<n {
//    let date = readLine()!.split(separator: " ").map {Int(String($0))!}
//
//    for i in date[0]...date[1] {
//        arr[i] += 1
//    }
//}
//
//
//func calcArea() -> Int {
//    var totalArea: Int = 0
//    var width: Int = 0
//    var height: Int = 0
//
//    for i in arr {
//        if i != 0 {
//            width += 1
//            height = max(height, i)
//        } else {
//            totalArea += width * height
//            width = 0
//            height = 0
//        }
//    }
//
//    totalArea += width * height // 남은 일정도 더해야함
//
//    return totalArea
//}
//
//
//print(calcArea())
//

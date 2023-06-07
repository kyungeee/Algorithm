//
//  20164_홀수홀릭호석.swift
//  Algorithm
//
//  Created by 박희경 on 2023/06/07.
//


//import Foundation
//
//let n = readLine()!
//
//var result: [Int] = []
//func recur(str: String, count: Int) {
//    var count = count
//
//    // string 이 한개일때 return
//    if str.count == 1 {
//        if Int(str)! % 2 != 0 {
//            result.append(count + 1)
//        } else{
//            result.append(count)
//        }
//        return
//    }
//
//    if str.count == 2 {
//        let newNum = str.map { Int(String($0))! }.reduce(0, +)
//        recur(str: String(newNum), count: count + calc(num: Int(str)!))
//    }
//
//    if str.count >= 3 {
//        // 3개로 나눌 수 있는 경우의수
//        for i in 1..<str.count  {
//            for j in i+1..<str.count {
//                let index1 = str.index(str.startIndex, offsetBy: i)
//                let index2 = str.index(str.startIndex, offsetBy: j)
//                let part1 = Int(str[..<index1])!
//                let part2 = Int(str[index1..<index2])!
//                let part3 = Int(str[index2...])!
//
//                let newNum = part1 + part2 + part3
//                recur(str: String(newNum), count: count + calc(num: Int(str)!))
//            }
//        }
//
//    }
//}
//
//func calc(num: Int) -> Int {
//    let numString = String(num)
//    let result = numString.map { Int(String($0))! }.filter { $0 % 2 != 0 }.count
//
//    return result
//}
//
//recur(str: n, count: 0)
//print("\(result.min()!) \(result.max()!)")
//
//

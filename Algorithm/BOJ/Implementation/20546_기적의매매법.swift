//
//  20546_기적의매매법.swift
//  Algorithm
//
//  Created by 박희경 on 2023/05/18.
//


//import Foundation
//
//
//let cash = Int(readLine()!)!
//
//let stockChart: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//
//func bnp() -> Int {
//    var junhyunCash: Int = cash // 준현의 현금
//    var totalStockNum: Int = 0 // 보유 주식 수
//
//    for i in 0..<13 {
//        if junhyunCash >= stockChart[i] {
//
//            var n = 1
//            while stockChart[i] * n <= junhyunCash {
//                totalStockNum += 1
//                n += 1
//            }
//            junhyunCash -= stockChart[i] * (n-1)  // 남은 현금
//        }
//    }
//
//
//    let asset: Int = junhyunCash + stockChart[13] * totalStockNum
//
//    return asset
//}
//
//
//func timing() -> Int {
//    var sungminCash: Int = cash // 성민의 현금
//    var totalStockNum: Int = 0 // 보유 주식 수
//
//    for i in 3..<13 {
//
//        // 3일동안 연속으로 주가 상승할 경우 -> 전량 매도
//        if stockChart[i-3] < stockChart[i-2] && stockChart[i-2] < stockChart[i-1] && stockChart[i-1] < stockChart[i] {
//            sungminCash += totalStockNum * stockChart[i]
//            totalStockNum = 0
//        }
//
//
//        // 3일동안 연속으로 주가 하락할 경우 -> 전량 매수
//        if stockChart[i-3] > stockChart[i-2] && stockChart[i-2] > stockChart[i-1] && stockChart[i-1] > stockChart[i] {
//            var n = 1
//            while stockChart[i] * n <= sungminCash {
//                totalStockNum += 1
//                n += 1
//            }
//            sungminCash -= (n-1) * stockChart[i]
//        }
//
//    }
//
//    let asset: Int = sungminCash + stockChart[13] * totalStockNum
//
//    return asset
//}
//
//
//if bnp() > timing() {
//    print("BNP")
//} else if bnp() < timing() {
//    print("TIMING")
//} else {
//    print("SAMESAME")
//}

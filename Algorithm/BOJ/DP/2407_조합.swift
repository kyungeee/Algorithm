//
//  2407_조합.swift
//  DP
//
//  Created by 박희경 on 2023/05/08.
//

//import Foundation
//
//let nm = readLine()!.components(separatedBy: " ").map { Int(String($0))!
//}
//
//let n = nm[0]
//let m = nm[1]
//
//var dp = Array(repeating: Array(repeating: "0", count: 101), count: 101)
//
//func stringAdd(_ a: String, _ b: String) -> String { // 큰 숫자 더하기.
//    var aArray = a.map{String($0)}
//    var bArray = b.map{String($0)}
//    
//    if aArray.count > bArray.count { // b가 무조건 길게.
//        swap(&aArray, &bArray)
//    }
//    
//    let len1 = aArray.count
//    let len2 = bArray.count
//    var answerString: String = ""
//    
//    var carry: Int = 0 // 올림되는 숫자값
//    let diff = len2 - len1
//    
//    for i in stride(from: len1-1, through: 0, by: -1) {
//        let sum: Int = Int(aArray[i])! + Int(bArray[diff + i])! + carry
//        answerString += String(UnicodeScalar(sum % 10 + 48)!) // 48이 "0"의 유니코드값.
//        carry = sum / 10
//    }
//    
//    for i in stride(from: len2-len1-1, through: 0, by: -1) {
//        let sum: Int = Int(bArray[i])! + carry
//        answerString += String(UnicodeScalar(sum % 10 + 48)!)
//        carry = sum / 10
//    }
//    
//    if carry > 0 {
//        answerString += String(UnicodeScalar(carry + 48)!)
//    }
//    
//    answerString = String(answerString.reversed())
//    return answerString
//}
//
//
//func combination(n: Int, m: Int) {
//    for i in 1...n {
//        for j in 0...m {
//            if dp[i][j] != "0" {
//                continue
//            }
//            else if j == 0 || i == j {
//                dp[i][j] = "1"
//            }
//            else {
//                dp[i][j] = stringAdd(dp[i-1][j-1], dp[i-1][j])
//            }
//        }
//    }
//    
//}
//
//combination(n: n, m: m)
//
//print(dp[n][m])
//

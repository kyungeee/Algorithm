//
//  2022 BLIND 2번 .swift
//  Algorithm
//
//  Created by 박희경 on 2023/06/20.
//

import Foundation

//func solution(_ n:Int, _ k:Int) -> Int {
//    let parsedNumber: [String] = String(n, radix: k).map{ String($0) }
//
//    var arr: [String] = []
//    var num: String = ""
//
//    for i in parsedNumber {
//        if i != "0" {
//            num += i
//        }
//
//        if num.count > 0 && i == "0" {
//            arr.append(num)
//            num = ""
//        }
//    }
//
//    if !num.isEmpty {
//        arr.append(num)
//    }
//
//    return isPrime(arr: arr)
//}
//
//// 소수판별
//func isPrime(arr: [String]) -> Int {
//    var result: Int = 0
//
//    for i in arr {
//        let n = Int(i)!
//        var isPrime = true
//
//        if n <= 1 {
//            continue
//        }
//
//        if n == 2 {
//            result += 1
//            continue
//        }
//
//        let sqrtValue = Int((sqrt(Double(n)))) + 1
//
//        for i in 2...sqrtValue {
//            if n % i == 0 {
//                isPrime = false
//                break
//            }
//        }
//
//        if isPrime  { result += 1 }
//    }
//
//    return result
//}
//
//

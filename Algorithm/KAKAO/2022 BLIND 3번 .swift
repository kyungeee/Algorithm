//
//  2022 BLIND 3번 .swift
//  Algorithm
//
//  Created by 박희경 on 2023/06/17.
//

import Foundation

//var timeDic: [String: [Int]] = [:]
//var totalDic: [String: Int] = [:]
//var result: [Int] = []
//func solution(_ fees:[Int], _ records:[String]) -> [Int] {
//
//    calcTime(records: records)
//    calcFee(fees: fees)
//
//    return result
//}
//
//func calcTime(records: [String]) {
//     for i in records {
//        let record = i.split(separator: " ").map{String($0)}
//        let minute = timeParsing(str: record[0])
//        let number = record[1]
//
//         if let car = timeDic[number] {
//             timeDic[number]!.append(minute)
//         } else {
//             timeDic[number] = [minute]
//         }
//    }
//
//    for (key, value) in timeDic {
//        if value.count % 2 != 0 {
//            timeDic[key]!.append(1439)
//        }
//
//        var total: Int = 0
//        for i in stride(from: 0, through: timeDic[key]!.count - 1, by: 2) {print(i)
//            total += timeDic[key]![i+1] - timeDic[key]![i]
//        }
//
//        totalDic[key] = total
//    }
//}
//
//func calcFee(fees: [Int]) {
//    let basicMinute = fees[0]
//    let basicFee = fees[1]
//    let unit = fees[2]
//    let unitFee = fees[3]
//
//    for (key, value) in totalDic {
//        if value > basicMinute {
//            let minute = ceil(Double(value - basicMinute) / Double(unit) )
//            let total = basicFee + Int(minute) * unitFee
//            totalDic[key]! = total
//        } else {
//            totalDic[key]! = basicFee
//        }
//    }
//
//    let sortedKeys = totalDic.keys.sorted()
//    for key in sortedKeys {
//        result.append(totalDic[key]!)
//    }
//
//}
//
//
//func timeParsing(str: String) -> Int {
//    var strArr = str.split(separator: ":").map { String($0) }
//    var minute = Int(strArr[0])! * 60 + Int(strArr[1])!
//    return minute
//}
//
//

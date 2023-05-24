//
//  2023 BLIND 3번.swift
//  Programmers
//
//  Created by 박희경 on 2023/05/24.
//

//import Foundation
//
//
//func solution(_ users:[[Int]], _ emoticons:[Int]) -> [Int] {
//
//    let sale: [Int] = [10, 20, 30, 40] // 할인율
//
//    var answer: [Int] = [] // 이모티콘 플러스 서비스 가입 수, 이모티콘 매출액
//
//    var saledEmoticon: [[Int]] = []
//
//    for emoticon in emoticons {
//        var arr: [Int] = []
//        for i in sale {
//            let sale = emoticon - (emoticon * i / 100)
//            arr.append(sale)
//        }
//
//        saledEmoticon.append(arr)
//    }
//
//    let result = dfs(num: emoticons.count, arr: [], result: []) // 모든 경우의 수
//
//    var maxMoney: Int = 0
//    var maxJoin: Int = 0
//
//    for i in result {
//        var money: Int = 0
//        var join: Int = 0
//
//        for user in users {
//            let userRate = user[0] // 비율
//            let userMoney = user[1] // 가격
//
//            var totalMoney: Int = 0
//
//            for j in 0..<emoticons.count {
//                if sale[i[j]] >= userRate {
//                    totalMoney += saledEmoticon[j][i[j]]
//                }
//            }
//
//            if totalMoney >= userMoney {
//                join += 1
//            } else {
//                money += totalMoney
//            }
//
//        }
//
//        // 행사 목적을 최대한 달성하는 것: 서비스 가입수가 최대, 서비스가입수가 같을 경우 이모티콘 매출액이 큰 순서대로
//        if join > maxJoin {
//            maxJoin = join
//            maxMoney = money
//        } else if join == maxJoin {
//            if money > maxMoney {
//                maxMoney = money
//            }
//        }
//    }
//
//    answer = [maxJoin, maxMoney]
//
//    return answer
//}
//
//
//func dfs(num: Int, arr: [Int], result: [[Int]]) -> [[Int]] {
//    var arr = arr
//    var result: [[Int]] = result
//
//    if num == arr.count {
//        result.append(arr)
//        return result
//    }
//
//    for i in 0..<4 {
//        arr.append(i)
//        result = dfs(num: num , arr: arr, result: result)
//        arr.removeLast()
//    }
//
//    return result
//}
//
//
//let result = solution([[40, 2900], [23, 10000], [11, 5200], [5, 5900], [40, 3100], [27, 9200], [32, 6900]], [1300, 1500, 1600, 4900])
//print(result)

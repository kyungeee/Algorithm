//
//  2024 WINTER INTERNSHIP 1번.swift
//  Algorithm
//
//  Created by 박희경 on 2024/01/15.
//

import Foundation

//func solution(_ friends:[String], _ gifts:[String]) -> Int {
//
//    var arr1: [[Int]] = []
//    var arr2: [[Int]] = []
//    var arr3: [Int] = []
//
//    // arr 초기화
//    arr1 = Array(repeating: Array(repeating: 0, count: friends.count), count: friends.count)
//    arr2 = Array(repeating: Array(repeating: 0, count: 3), count: friends.count)
//    arr3 = Array(repeating: 0, count: friends.count)
//
//    // 준사람, 받은사람 배열 만들기
//    for i in gifts {
//        let gift = i.components(separatedBy: " ")
//        let give = gift[0]
//        let receive = gift[1]
//        if let idx1 = friends.firstIndex(of: give), let idx2 = friends.firstIndex(of: receive) {
//            arr1[idx1][idx2] += 1
//            arr2[idx1][0] += 1
//            arr2[idx2][1] += 1
//        }
//    }
//
//    // 선물 지수 구하기
//    for i in 0..<friends.count {
//        let give = arr2[i][0]
//        let receive = arr2[i][1]
//        arr2[i][2] = give - receive
//    }
//
//    // 다음달 받을 선물 개수 구하기
//    for i in 0..<friends.count {
//        for j in 0..<friends.count {
//            if i == j {continue}
//            if arr1[i][j] > arr1[j][i] {
//                arr3[i] += 1
//            } else if arr1[i][j] == arr1[j][i] {
//                if arr2[i][2] > arr2[j][2] {
//                    arr3[i] += 1
//                }
//            }
//        }
//    }
//
//    return arr3.max()!
//}


//
//  2019 BLIND 1번 .swift
//  Algorithm
//
//  Created by 박희경 on 2023/07/06.
//

import Foundation
//
//func solution(_ record:[String]) -> [String] {
//    var userDic: [String: String] = [:]
//    var stateArr: [[String]] = []
//
//    var result: [String] = []
//
//    for i in record {
//        let input = i.split(separator: " ").map{ String($0) }
//
//        if input[0] == "Enter" {
//            userDic[input[1]] = input[2]
//            stateArr.append(["\(input[1])","Enter"])
//        } else if input[0] == "Leave" {
//            stateArr.append(["\(input[1])","Leave"])
//        } else {
//            userDic[input[1]] = input[2]
//        }
//    }
//
//    for i in stateArr {
//        let nickName = userDic[i[0]]!
//        var str = ""
//        if i[1] == "Enter" {
//           str = "\(nickName)님이 들어왔습니다."
//        } else {
//           str = "\(nickName)님이 나갔습니다."
//        }
//        result.append(str)
//    }
//
//    return result
//}

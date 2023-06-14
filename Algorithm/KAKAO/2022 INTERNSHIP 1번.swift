//
//  2022 INTERNSHIP 1번.swift
//  Algorithm
//
//  Created by 박희경 on 2023/06/14.
//

import Foundation
//
//func solution(_ survey:[String], _ choices:[Int]) -> String {
//
//    let survey = survey
//    let choices = choices
//    var result: String = ""
//    let personality = ["R" , "T" , "C", "F", "J" , "M", "A", "N"]
//    var dic: [String: Int] = ["R": 0 , "T": 0 , "C": 0, "F": 0, "J": 0 , "M": 0, "A": 0, "N": 0]
//
//    for i in 0..<survey.count {
//        let twoChoice = survey[i].map {String($0)}
//        let choice1 = twoChoice[0], choice2 = twoChoice[1]
//
//        switch choices[i] {
//            case 1 :
//            dic[choice1]! += 3
//            case 2 :
//            dic[choice1]! += 2
//            case 3:
//            dic[choice1]! += 1
//            case 5:
//            dic[choice2]! += 1
//            case 6:
//            dic[choice2]! += 2
//            case 7:
//            dic[choice2]! += 3
//            default:
//            dic[choice2]! += 0
//        }
//    }
//
//    for i in stride(from: 0, through: personality.count - 1, by: 2) {
//         if dic[personality[i]]! > dic[personality[i+1]]! {
//            result += personality[i]
//        } else if dic[personality[i]]! < dic[personality[i+1]]! {
//            result +=  personality[i+1]
//        } else {
//            let isAscending = personality[i].compare(personality[i+1], options: .caseInsensitive)
//            if isAscending == .orderedAscending {
//                result += personality[i]
//            } else {
//                result += "\(personality[i+1])"
//            }
//        }
//    }
//
//    return result
//}
//

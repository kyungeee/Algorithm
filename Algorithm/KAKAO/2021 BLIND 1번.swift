//
//  2021 BLIND 1번.swift
//  Algorithm
//
//  Created by 박희경 on 2023/07/05.
//

import Foundation

// 길이 3~15
// 알파벳 소문자 - _ . 가능
// 단 . 는 처음 끝 안됨 .
//var recommend_id = ""
//
//func solution(_ new_id:String) -> String {
//    recommend_id = new_id.lowercased()
//    // recommend_id = "b=.=.=.=.=.=.=.=.=.=.=.=.=.=.=.x"
//    filterID()
//    twoDotToOneDot()
//    deleteFirstLastDot()
//    isLongString()
//    isShortString()
//    
//    return recommend_id
//}
//
//// 소문자, 숫자, 빼기, 밑줄, 마침표 제외한 모든 문자 제거
//func filterID() {
//    var filtered_id = ""
//    for c in recommend_id {
//        if c.isLetter || c.isNumber ||  c == "-"  || c == "_" || c == "." {
//            filtered_id.append(c)
//        }
//    }
//    
//    recommend_id = filtered_id
//}
//
////.. -> .
//func twoDotToOneDot() {
//    while recommend_id.contains("..") {
//        recommend_id = recommend_id.replacingOccurrences(of: "..", with: ".")
//    }
//}
//
//// .abc. -> abc
//func deleteFirstLastDot()  {
//    
//    while recommend_id.hasPrefix(".") {
//        recommend_id.removeFirst()
//    }
//    
//    while recommend_id.hasSuffix(".") {
//        recommend_id.removeLast()
//    }
//    
//    if recommend_id.count == 0 {
//        recommend_id.append("a")
//    }
//}
//
//
//func isLongString() {
//    if recommend_id.count > 15 {
//        let count = recommend_id.count - 15
//        recommend_id.removeLast(count)
//    }
//    
//    if recommend_id.hasSuffix(".") {
//        recommend_id.removeLast()
//    }
//}
//
//func isShortString() {
//    if recommend_id.count < 3 {
//        if let last = recommend_id.last {
//            while recommend_id.count != 3 {
//                recommend_id.append(last)
//            }
//        }
//    }
//}

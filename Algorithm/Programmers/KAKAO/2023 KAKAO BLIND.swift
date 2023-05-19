//
//  2023 KAKAO BLIND.swift
//  Programmers
//
//  Created by 박희경 on 2023/05/19.
//

//import Foundation
//
//
//func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
//    
//    // 오늘 날짜 정보 배열로 파싱
//    let todayDateArray = parsingDate(str: today)
//    
//    // 약관 정보 딕셔너리로 파싱
//    var termDic: [String: Int] = [:]
//    
//    for i in terms {
//        let arr = i.split(separator: " ").map { String($0) }
//        termDic[arr[0]] = Int(arr[1])
//    }
//    
//    // 리턴할 정보 배열
//    var firedInfo: [Int] = []
//    
//
//    for i in 0..<privacies.count {
//        var privacy: [String] = privacies[i].split(separator: " ").map {  String($0) }
//        var dateArr: [Int] = parsingDate(str: privacy[0]) // 날짜 배열로 파싱
//        var term: String = privacy[1] // 약관 ex) "A"
//        var period = termDic[term] ?? 0 // 유효기간 ex) 6달
//        
//        // 수집된 날짜 + 유효기간
//        for _ in 0..<period {
//            dateArr[1] += 1
//            
//            if dateArr[1] == 13 {
//                dateArr[1] = 1 // 월 초기화
//                dateArr[0] += 1 // 년도 +1
//            }
//        }
//        
//        // 날짜 비교연산은 먼저 현재 년도, 개인정보의 년도와 비교
//        // 개인정보의 년도가 현재년도보다 작다면 무조건 만료, 아니면 년도가 현재년도보다 크다면 무조건 만료아님.
//        // 현재년도와 같은 경우 -> 월, 일 계산 해야함.
//        // 먼저 월 계산 -> 현재 월보다 계약월이 더 작으면 이미 지났음으로 만료, 현재 월보다 계약월이 더 크면 보관
//        // 월이 같을 경우 -> 현재 일보다 계약일이 더 작으면 만료, 더 크다면 보관
//        
//        if dateArr[0] < todayDateArray[0] {
//            firedInfo.append(i+1)
//            continue
//        }
//        
//        if dateArr[0] == todayDateArray[0] {
//            if dateArr[1] < todayDateArray[1] {
//                firedInfo.append(i+1)
//                continue
//            }
//            if dateArr[1] == todayDateArray[1] {
//                if dateArr[2] <= todayDateArray[2] {
//                    firedInfo.append(i+1)
//                    continue
//                }
//            }
//        }
//    }
//    
//    return firedInfo
//}
//
//
//func parsingDate(str: String) -> [Int] {
//    var date = str.split(separator: ".").map {  String($0) }
//    
//    if date[1] == "0" {
//        date[1] = String(date[1].suffix(1))
//    }
//    
//    if date[2] == "0" {
//        date[2] = String(date[2].suffix(1))
//    }
//    
//    var dateArr = date.map { Int($0)! }
//    
//    return dateArr
//}
//
//
//

//
//  22860_폴더정리(small).swift
//  Algorithm
//
//  Created by 박희경 on 2023/05/26.
//

import Foundation


/// 처음 시도 = 매 쿼리가 들어올때마다 dfs 돌림 -> 시간초과
/// 두번째 시도 = 쿼리들이 중복된 연산이 많기 때문에 dp 테이블을 두어 "main" 최상위 노드 부터 시작해서 딱 한번만 dfs 돌리면서 memorization 한 결과값 출력 -> 성공

//func dfs(str: String) -> [String] {
//    var answer: [String] = []
//
//    if let values = folderDic[str] {
//        for value in values {
//            // 폴더인 경우
//            if value[1] == "1" {
//                answer += dfs(str: value[0])
//            }
//            // 파일인 경우
//            else {
//                answer.append(value[0])
//            }
//        }
//        // 파일의 종류(중복 불허용), 파일의 개수(중복허용)
//        let type = Set(answer).count
//        let total = answer.count
//        dp[str] = [type, total]
//    } else {
//        // 빈 폴더일 경우
//        answer = []
//        dp[str] = [0, 0]
//    }
//
//    return answer
//}
//
//
//let nm = readLine()!.split(separator: " ").map { Int(String($0))!
//}
//let n = nm[0] , m = nm[1]
//
//var folderDic: [String : [[String]]] = [:] // folder 딕셔너리
//
//for _ in 0..<n+m {
//    let input = readLine()!.components(separatedBy: " ")
//
//    if let folder = folderDic[input[0]] {
//        folderDic[input[0]] = folder + [[input[1], input[2]]]
//    } else {
//        folderDic[input[0]] = [[input[1], input[2]]]
//    }
//}
//
//var q = Int(readLine()!)! // 쿼리 개수
//
//var folder: [String] = []
//for _ in 0..<q {
//    let input = readLine()!.components(separatedBy: "/")
//    folder.append(input[input.count - 1])
//}
//
//var dp: [String: [Int]] = [:] // 폴더별 파일종류, 개수를 담은 딕셔너리
//
//dfs(str: "main")
//
//for i in folder {
//    print("\(dp[i]![0]) \(dp[i]![1])")
//}
//
//
//
//

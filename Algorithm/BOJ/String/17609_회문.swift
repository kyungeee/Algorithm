//
//  17609_회문.swift
//  Algorithm
//
//  Created by 박희경 on 2023/06/06.
//

import Foundation

// 학교에서 펠린드롬이랑 비슷한 문제를 풀어본 기억이 스쳤다. -> 투포인터를 쓰면 된다.
// start ++ , end --
//
//let n = Int(readLine()!)!
//var arr: [String] = []
//
//for _ in 0..<n {
//    let str = readLine()!
//    arr.append(str)
//}
//
//// 원래 위 포문에서 str 하나씩 받고 바로 함수 호출했는데, 입력이 종료된 후에 버퍼에 남아있는 데이터가 출력과 함께 나와서 입력 따로 출력 따로 해줌
//for i in arr {
//    let str = i.map { String($0) }
//    print(check(str: str, start: 0, end: str.count - 1, count: 0))
//}
//
///// 처음 시도: 반복문을 사용했다. 답은 맞게 나왔으나, 틀렸습니다. 뜸
///// 반례를 찾아보니 baaba 가 있음
///// start = 0, end = 4 일때 s+1과 e 가 같아서 확인해보면 이때는 유사회문이 아닌걸로 뜸
///// s 와 , e - 1로 확인해보면 이때는 유사회문이라고 뜸
///// 따라서 두가지 케이스를 모두 체크해야하기 때문에 반복문이 아니라 재귀 함수로 고쳤음.. 이문제는 이걸 노린듯하다 ^^ ..
//func check(str: [String], start: Int, end: Int, count: Int) -> Int {
//    var count : Int = count
//
//    var start: Int = start
//    var end: Int = end
//
//    while start < end {
//        if str[start] == str[end] {
//            start += 1
//            end -= 1
//        }
//        else {
//            // 여기서 생각 잘못한점.
//            // 1번 케이스 str[left + 1] == str[right] 이거나, 2번 케이스 str[left] == str[right - 1]
//            // 3번 케이스 str[left + 1] != str[right] && str[left] != str[right - 1] 만 생각했음.
//            // 4번 케이스인 str[left + 1] == str[right] 이고 if str[left] == str[right - 1] 를 빼먹음.
//
//            if count == 1 {
//                return 2
//            }
//
//            if check(str: str, start: start + 1, end: end, count: count + 1) == 1 {
//                return 1
//            } else {
//                return check(str: str, start: start, end: end - 1, count: count + 1)
//            }
//        }
//    }
//
//    return count
//}
//
//

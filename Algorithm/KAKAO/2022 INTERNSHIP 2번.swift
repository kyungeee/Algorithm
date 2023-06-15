//
//  2022 INTERNSHIP 2번.swift
//  Algorithm
//
//  Created by 박희경 on 2023/06/15.
//

import Foundation

// 2번째 시도 => 투포인터 사용
/// 투포인터 사용이유: 처음 시도했을때 두개의 Q를 만들어서 두개의 큐중 한개가 빌때까지 연산을 해줬는데
/// 배열 removeFirst () 메서드를 사용할때 요소 한개 지우고 나머지 뒤에 값들을 재배치하는 데 걸리는 시간복잡도 O(n)
/// 결론 : 시간초과가 나서 찾아보니 투포인터 사용해야한다고 함 .
/// 그래서 투포인터로 큐2개를 한개로 만들어서 인덱스만 옮겨주면서 연산 -> 훨 효율적 -> 성공적
//func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
//    var answer = 0
//    var queue1 = queue1
//    var queue2 = queue2
//
//    var queue = queue1 + queue2
//
//    var sum1 = queue1.reduce(0, +)
//    var sum2 = queue2.reduce(0, +)
//
//    var targetNumber = (sum1 + sum2) / 2
//
//    var right = queue1.count
//    var left = 0
//
//    if sum1 == sum2 {
//        return 0
//    }
//
//    if (sum1 + sum2) % 2 != 0 {
//        return -1
//    }
//
//    var total = 0
//    while right < queue.count && left <= right {
//
//        if sum1 > targetNumber {
//            sum1 -= queue[left]
//            left += 1
//        } else if sum1 < targetNumber {
//            sum1 += queue[right]
//            right += 1
//        } else {
//            break
//        }
//
//        total += 1
//    }
//
//    if sum1 == targetNumber {
//        answer = total
//    } else {
//        answer = -1
//    }
//
//    return answer
//}



// 첫번째 시도 -> 시간초과 (원인: removeFirst 때문인것 같다)
// 문제가 말하는 그대로 풀면 시간초과난다.^^
//func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
//    var queue1 = queue1
//    var queue2 = queue2
//    var queue = queue1 + queue2
//
//    var count1 = queue1.reduce(0, +)
//    var count2 = queue2.reduce(0, +)
//
//    var result = 0
//    var n = (count1 + count2) / 2
//
//    if count1 == count2 {
//        return 0
//    }
//
//    if (count1 + count2) % 2 != 0 {
//        return -1
//    }
//
//    while count1 != count2 {
//
//         if queue1.isEmpty || queue2.isEmpty {
//             result = -1
//             break
//         }
//
//        if count1 > count2 {
//            while count1 > count2 {
//                let element = queue1.removeFirst()
//                queue2.append(element)
//                count1 -= element
//                count2 += element
//            }
//        } else if count1 < count2 {
//            while count1 < count2 {
//                let element = queue2.removeFirst()
//                queue1.append(element)
//                count1 += element
//                count2 -= element
//            }
//        } else {
//            break
//        }
//
//        result += 1
//    }
//
//    return result
//}




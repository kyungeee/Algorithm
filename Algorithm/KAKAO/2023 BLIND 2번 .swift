//
//  2023 BLIND 2번 .swift
//  Programmers
//
//  Created by 박희경 on 2023/05/22.
//

import Foundation

// 그리디 알고리즘 (최적)
// 첫번째 로직: 수거 + 배달을 함께 묶어서 한번에 돌림 -> 시간초과 (n이 최대 100,000까지므로 O(n^2) 불가능)
//func solution(_ cap:Int, _ n:Int, _ deliveries:[Int], _ pickups:[Int]) -> Int64 {
//
//    var deliveries: [Int] = deliveries
//    var pickups: [Int] = pickups
//
//    var totalDelievry: Int = deliveries.reduce(0, +) // 총 배달해야하는 택배 수
//    var totalPickup: Int = pickups.reduce(0, +) // 총 수거해야하는 상자 수
//
//    var distance: Int64 = 0 // 총 거리
//
//    // 남은 택배와 수거할 상자가 없을때까지
//    while totalDelievry != 0 && totalPickup != 0 {
//
//        var delivery = 0
//        var pickup = 0
//
//        var deliveryTemp = 0
//        var pickupTemp = 0
//
//        for i in 0..<n {
//
//            if deliveries[i] != 0 {
//                if deliveryTemp < totalDelievry - cap {
//                    deliveryTemp += deliveries[i]
//                }
//                else {
//                    delivery += deliveries[i]
//                    deliveryTemp += deliveries[i]
//                    deliveries[i] = 0
//                }
//            }
//
//            if pickups[i] != 0 {
//                if pickupTemp < totalPickup - cap {
//                    pickupTemp += pickups[i]
//                }
//                else {
//                    pickup += pickups[i]
//                    pickupTemp += pickups[i]
//                    pickups[i] = 0
//                }
//            }
//
//            if deliveryTemp == totalDelievry && pickupTemp == totalPickup {
//                totalDelievry -= delivery
//                totalPickup -= pickup
//                distance += Int64((i+1) * 2)
//                break
//            }
//        }
//    }
//
//    return distance
//}

// 두번째 로직: 배달, 수거를 각각 스택을 두어 따로 돌림
//func solution2(_ cap:Int, _ n:Int, _ deliveries:[Int], _ pickups:[Int]) -> Int64 {
//
//    var deliveries: [Int] = deliveries // 배달 스택
//    var pickups: [Int] = pickups // 수거 스택
//    var answer: Int = 0
//
//    // 배달스택, 수거스택이 모두 비어있을때까지
//    while !deliveries.isEmpty || !pickups.isEmpty {
//        var delivery: Int = 0
//        var pickup: Int = 0
//
//        // 스택의 마지막 인덱스 값이 0 일 경우 pop
//        deliveries = trimZero(arr: deliveries)
//        pickups = trimZero(arr: pickups)
//
//        answer += max(deliveries.count, pickups.count) * 2
//
//        while !deliveries.isEmpty && delivery < cap {
//            if deliveries.last! + delivery <= cap {
//                delivery += deliveries.removeLast()
//            } else {
//                // delivery 변수에 배달 스택 pop 해서 나온 값을 더한게 cap 보다 크다면
//                // cap 만큼 채워주고 나머지는 keep
//                deliveries[deliveries.count - 1] = deliveries.last! - (cap - delivery)
//                delivery += cap - delivery
//            }
//        }
//
//        while !pickups.isEmpty && pickup < cap {
//            if pickups.last! + pickup <= cap {
//                pickup += pickups.removeLast()
//            } else {
//                // pickup 변수에 수거 스택 pop 해서 나온 값을 더한게 cap 보다 크다면
//                // cap 만큼 채워주고 나머지는 keep
//                pickups[pickups.count - 1] = pickups.last! - (cap - pickup)
//                pickup += cap - pickup
//            }
//        }
//    }
//
//    return Int64(answer)
//}
//
//
//func trimZero(arr: [Int]) -> [Int] {
//    var arr = arr
//
//    while true {
//        if arr.count > 0 && arr.last == 0 {
//            arr.removeLast()
//        } else {
//            break
//        }
//    }
//
//    return arr
//}
//
//let distance = solution2(2, 7, [1, 0, 2, 0, 1, 0, 2], [0, 2, 0, 1, 0, 2, 0] )
//print(distance)

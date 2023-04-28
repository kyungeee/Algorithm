//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//

import Foundation

let n = Int(readLine()!)!


// MARK: - 홀짝 간단 ver
//if n % 2 != 0 {
//    // n 이 홀수일때 -1, -3(홀수)를 빼면 짝수가 되기 때문에 게임에서 이길 수 밖에 없음
//    print("SK")
//}
//else {
//    // n이 짝수일때 -1, -3(홀수)를 빼면 홀수가 되기 때문에 게임에서 질 수 밖에 없음
//    print("CY")
//}


// MARK: - DP 사용한 ver

// dp table  초기화
var memo = Array(repeating: 0, count: 1001)

// i-1, i-3 에 접근시 index error 방지
memo[1] = 1
memo[2] = 2

for i in 3...n {
    
    /// min 함수 사용이유: 문제에서 "두 사람이 완벽하게 게임을 했을 때" 를 조건으로 했기 때문에 최소 연산의 경우의 수로 사용해야함.
    /// 위에서 확인한것처럼 i 가 짝수이면 항상 상근이가 이기고 i 가 홀수이면 항상 창영이가 이김.
    /// 따라서 memo[i] 값은 memo[i-1] 혹은 memo[i-3] 중 더 작은 값에서 + 1 (연산 횟수) 만 더해서 구해주면 된다.
    /// memo[i-1] 혹은 memo[i-3] 의 값에 + 1 을 해줌으로써
    /// i = 짝수인 경우에 -1, -3 을 하면 홀수 => 홀수 + 1 = 짝수 가 됨
    /// i = 홀수인 경우에는 -1, -3 을 하면 짝수 =>  짝수 + 1 = 홀수
    /// 결론 i 가 짝수일 경우 memo[i]도 짝수가 되고 i가 홀수일경우 memo[i] 값도 홀수
    memo[i] = min(memo[i-1], memo[i-3]) + 1
    
}

if n % 2 != 0 {
    print("SK")
}
else {
    print("CY")
}

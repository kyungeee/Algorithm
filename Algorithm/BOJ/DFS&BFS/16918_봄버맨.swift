//
//  16918_봄버맨.swift
//  DP
//
//  Created by 박희경 on 2023/03/26.
//

//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//let R = input[0], C = input[1], N = input[2]
//
//var arr: [[String]] = []
//
//for _ in 0..<R {
//    arr.append(readLine()!.split(separator: "").map {String($0)})
//}
//
//// 상하좌우
//let dx = [1, -1, 0, 0]
//let dy = [0, 0, 1, -1]
//
//func printArr() {
//    // N == 1
//    if N == 1 {
//        for i in 0..<R {
//            for j in 0..<C {
//                print(arr[i][j], terminator: "")
//            }
//            print("")
//        }
//        return
//    }
//    // N 이 짝수일때
//    else if N % 2 == 0 {
//        for _ in 0..<R {
//            for _ in 0..<C {
//                print("O", terminator: "")
//            }
//            print("")
//        }
//        return
//    }
//    // N이 홀수 일때
//    else {
//        // N이 3, 7, 11 ... 일때
//        var pop1 = Array(repeating: Array(repeating: "O", count: C), count: R)
//        var pop2 = Array(repeating: Array(repeating: "O", count: C), count: R)
//
//        for i in 0..<R {
//            for j in 0..<C {
//                if (arr[i][j] == "") {
//                    pop1[i][j] = "."
//                    for k in 0...3 {
//                        let nx = i + dx[k]
//                        let ny = j + dy[k]
//
//                        if nx>=0&&ny>=0&&nx<R&&ny<C {
//                            pop1[nx][ny] = "."
//                        }
//                    }
//                }
//            }
//        }
//
//        for i in 0..<R {
//            for j in 0..<C {
//                if (pop1[i][j] == "O") {
//                    pop2[i][j] = "."
//                    for k in 0...3 {
//                        let nx = i + dx[k]
//                        let ny = j + dy[k]
//
//                        if nx>=0&&ny>=0&&nx<R&&ny<C {
//                            pop2[nx][ny] = "."
//                        }
//                    }
//                }
//            }
//        }
//
//
//        if N%4 == 3 {
//            for i in 0..<R {
//                for j in 0..<C {
//                    print(pop1[i][j], terminator: "")
//                }
//                print("")
//            }
//        }
//        if N%4 == 1 {
//            for i in 0..<R {
//                for j in 0..<C {
//                    print(pop2[i][j], terminator: "")
//                }
//                print("")
//            }
//        }
//    }
//}
//
//printArr()
//
//
//

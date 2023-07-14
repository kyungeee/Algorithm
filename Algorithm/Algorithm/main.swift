import Foundation


var dic: [String : Int] = [:]

// 코스요리 -> 최소 2가지 이상의 단품메뉴 & 최소 2명 이상의 손님으로부터 주문된 단품메뉴 조합에 대해서만
func solution(_ orders:[String], _ course:[Int]) -> [String] {
    var result: [String] = [] // 사전 순으로 오름차순
    
    for i in orders {
        let comb = i.map{String($0)}.sorted()
        for j in course {
            if comb.count >= j {
                recur(comb, "", 0, j)
            }
        }
    }
    
    for i in course {
        let sub = dic.filter{$0.key.count == i}
        if let maxScore = Array(sub.values).max() , maxScore >= 2 {
            for (key, value) in sub {
                if value == maxScore {
                    result.append(key)
                }
            }
        }
    }
    
    result.sort()
    
    return result
}


func recur(_ comb: [String], _ str: String, _ k: Int, _ num: Int) {
    var str = str
    
    if str.count == num {
        if let value = dic[str] {
            dic[str] = value + 1
        } else {
            dic[str] = 1
        }
    }
    
    for i in k..<comb.count {
        str.append(comb[i])
        recur(comb, str, i+1, num)
        str.removeLast()
    }
}


let arr = solution(["XYZ", "XWY", "WXA"], [2,3,4])
print(arr)

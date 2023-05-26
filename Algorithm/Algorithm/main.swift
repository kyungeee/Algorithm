//
//  main.swift
//  Algorithm
//
//  Created by 박희경 on 2022/11/06.
//



import Foundation


let input = String(readLine()!)

// <main> </main> 메인 테그 없애기
var str = String(input.dropFirst(6).dropLast(7))
var divArr: [String] = str.components(separatedBy: "</div>")

var titles: [String] = []
var title: String = ""

var contents: [[String]] = []

var titleOpen: Bool = false

// <div> 타이틀 빼내기
for i in 0..<divArr.count {
    for j in divArr[i] {
        
        if j == "\"" {
            if titleOpen == false {
                titleOpen = true
            } else {
                titleOpen = false
                titles.append(title)
                title = ""
            }
        } else if j == ">" {
            divArr[i].removeFirst()
            break
        } else {
            if titleOpen {
                title += String(j)
            }
        }
        
        divArr[i].removeFirst()
        
    }
    
    var arr = divArr[i].components(separatedBy: "</p>")
    arr.removeLast()
    contents.append(arr)

}

var tagOpen: Bool = false
var space: Bool = false

for i in 0..<contents.count-1 {
    print("title : \(titles[i])")
    var str = ""
    for content in contents[i] {
        for j in content {
            // 1. <> 태그 빼주기 2. 공백 2개이상이면 1개로
            if j == "<" {
                tagOpen = true
            } else if j == ">" {
                tagOpen = false
            } else {
                if tagOpen == false {
                    if j != " " {
                        space = false
                        str.append(j)
                    } else {
                        if space == false {
                            space = true
                            str.append(j)
                        }
                    }
                }
            }
        }
        
        if str.first == " " {
            str.removeFirst()
        }
        if str.last == " " {
            str.removeLast()
        }
        print(str)
        str = ""
    }
}




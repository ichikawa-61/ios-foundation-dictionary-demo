//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var emptyDict = [String: String]()

emptyDict = ["apple" :"りんご",
             "orange":"みかん",
             "banana":"バナナ"]
print(emptyDict["apple"]as Any)

var scoreDic = [20:"bad",
                40:"soso",
                60:"ok",
                80:"good",]
scoreDic.values

scoreDic[100] = "excellent"
print(scoreDic)

scoreDic[20] = "poor"
print(scoreDic)

//remove
scoreDic[40] = nil
print(scoreDic)


var numbers = ["evenNumber":["j","k","i","a"],
               "oddNumber" :["o","p","a"]
              ]



for key in numbers.keys {
    numbers[key]?.sort(by: <)
}
 print(numbers["evenNumber"]as Any)
 print(numbers["oddNumber"]as Any)

let keys = emptyDict.keys
let values = [String](emptyDict.values)
let valuues = [Array](numbers.values)
let valuue = [String](numbers.keys)

print(Array(values))
//let keys2 = [String](numbers.keys)

print(keys)
print(values)


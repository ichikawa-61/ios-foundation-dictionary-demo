//
//  ViewController.swift
//  ios-foundation-dictionary-demo
//
//  Created by Manami Ichikawa on 5/12/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   //からのdictionary
    var emptyDict = [String: String]()
    let dictionary: [String: String] = [:]
    let dictionary2 = Dictionary<String, String>()
    
    var scoreDic = [20:"bad",
                    40:"soso",
                    60:"ok",
                    80:"good",]
    
    var numbers = ["evenNumber":[2,6,4,8,10],
                   "oddNumber" :[1,3,5,7,9]
                  ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for key in numbers.keys {
            numbers[key]?.sort(by: <)
        }
        print(numbers["evenNumber"]as Any)
        print(numbers["oddNumber"]as Any)

        getValuesAndKeys()
        setDictionary()
    }
    
    //キーと値を入れる
    private func setDictionary(){
    
        emptyDict = ["apple":"りんご",
                    "orange":"みかん",
                    "banana":"バナナ"]
        print(emptyDict["apple"]as Any)      //Optional("りんご")
        
    //下記のようにキーが存在しない場合があるので、キーを指定したdictionaryはoptional型を返す
        print(emptyDict["grape"]as Any)      //nil
    }
    
    //追加、修正、削除
    private func updateModifyRemoveKeys(){
        
        //update
        scoreDic[100] = "excellent"
        print(scoreDic)
        
        //modify
        scoreDic[20] = "poor"
        print(scoreDic)
        
        //remove
        scoreDic[40] = nil
        print(scoreDic)
    }
    
    //可変のDictionaryの場合、valueにあたる配列を並び替えもできる
    private func sortArrayInOrder(){
    
        for key in numbers.keys {
            numbers[key]?.sort(by: <)
        }
        print(numbers["evenNumber"]as Any)
        print(numbers["oddNumber"]as Any)
    }
    
    //valueやkeyのみを取り出す
    private func getValuesAndKeys(){
    
        let keys = [String](emptyDict.keys)
        print(keys)
        
        let values = numbers.values
        print(values)      //LazyMapCollection<Dictionary<String, Array<Int>>, Array<Int>>...
        print(Array(values)) //[[2, 4, 6, 8, 10], [1, 3, 5, 7, 9]]
    }
    
    


}


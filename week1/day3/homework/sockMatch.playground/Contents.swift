import UIKit

/**
 Alex works at a clothing store. There is a large pile of socks that must be paired by color for sale. Given an array of
 integers representing the color of each sock, determine how many pairs of socks with matching colors there are.
 For example, there are socks with colors . There is one pair of color and one of color
 . There are three odd socks left, one of each color. The number of pairs is .
 Function Description
 Complete the sockMerchant function in the editor below. It must return an integer representing the number of
 matching pairs of socks that are available.
 sockMerchant has the following parameter(s):
 n: the number of socks in the pile
 ar: the colors of each sock
 Input Format
 The first line contains an integer , the number of socks represented in .
 The second line contains space-separated integers describing the colors of the socks in the pile.
*/
func sockMerchant(count:Int, socks:[Int]) -> Int {
    guard count <= 100, count >= 1 else {
        return 0
    }
    var totalToSell = 0
    var sockDict :[Int:Int] = [:]
    for sockColor in socks {
        if sockDict[sockColor] != nil {
            sockDict[sockColor]! += 1
        } else {
            sockDict[sockColor] = 1
        }
    }
    for (_,socks) in sockDict {
        totalToSell += socks / 2
    }
    return totalToSell
}

print(sockMerchant(count: 9, socks: [10, 20, 20, 10, 10, 30, 50, 10, 20]))
print(sockMerchant(count: 10, socks: [1, 1, 3, 1, 2, 1, 3, 3, 3, 3 ]))


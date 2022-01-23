/**
 Two Strings
 Given two strings, determine if they share a common substring. A substring may be as small as one
 character.
 For example, the words "a", "and", "art" share the common substring . The words "be" and "cat" do not
 share a substring.
 Function Description
 Complete the function twoStrings in the editor below. It should return a string, either YES or NO based
 on whether the strings share a common substring.
 twoStrings has the following parameter(s):
 s1, s2 : two strings to analyze .
 Input Format
 The first line contains a single integer , the number of test cases.
 The following pairs of lines are as follows:
 The first line contains string .
 The second line contains string .
 
 */

struct InputForTwoString {
    let inputCount: Int
    let inputStringPair: [[String]]
}

let input00 = InputForTwoString(inputCount: 2,inputStringPair: [["hello","world"],["hi","world"]])
let input06 = InputForTwoString(inputCount: 4,inputStringPair: [["wouldyoulikefries","hackerrankcommunity"],["hackerrankcommunity","cdecdecdecde"],["jackandjill","wentupthehill"],["writetoyourparents","fghmqzldbc"]])
let input07 = InputForTwoString(inputCount: 2,inputStringPair: [["aardvark","apple"],["beetroot","sandals"]])


func TwoString(s1:String,s2:String) -> String {
    for character1 in s1 {
        if s2.contains(character1) {
            return "YES"
        }
    }
    return "NO"
}

func CheckResult(input:InputForTwoString) {
    for i in 0..<input.inputCount {
       print(TwoString(s1: input.inputStringPair[i][0], s2: input.inputStringPair[i][1]))
    }
}

CheckResult(input: input00)
print("********")
CheckResult(input: input06)
print("********")
CheckResult(input: input07)

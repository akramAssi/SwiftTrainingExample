import UIKit

func checkEnding(_ str1: String, _ str2: String) -> Bool {
    var  len2 = str2.count

    let index = str1.index(str1.endIndex, offsetBy: -len2)
    if str1.suffix(from: index) == str2
    {
        return true;
    }
    
    return false
}
func checkEnding1(_ str1: String, _ str2: String) -> Bool {
    
var  len2 = str2.count
    let index = str1.index(str1.endIndex, offsetBy: -len2)
    let index2 = index..<str1.endIndex
    if str1[index2] == str2
    {
        return true;
    }
    
    return false
}
print("1233456".hasSuffix("56"))


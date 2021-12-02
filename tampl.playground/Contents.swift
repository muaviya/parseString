import Foundation

var string = "table table table"
let substring = "table"
let setValues = ["_o_", "_fo_", "_sen_"]
// Результат должен быть следующий:
// "table _o_ table _fo_ table _sen_"

var index = 0
var stepIndex = 0

var i = 0

var stringLoc = string
for char in string {
    if substring.first == char {
        let startOfFoundCharacter = string.index(string.startIndex, offsetBy: index)
        let lengthOfFoundCharacter = string.index(string.startIndex, offsetBy: (substring.count + index))
        let range = startOfFoundCharacter..<lengthOfFoundCharacter
        
        // если в строке нашли подстроку "table"
        if string.substring(with: range) == substring {
            stepIndex = index + substring.count
                        
            let trueIndex = stringLoc.index(stringLoc.startIndex, offsetBy: stepIndex)
            stringLoc.insert(contentsOf: setValues[i], at: trueIndex)
        
            i += 1
        }
    }
    index += 1
}

print(stringLoc)

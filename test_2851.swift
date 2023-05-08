func test_2851() {
    var result = 0
    var scores = [Int]()
    for _ in 0..<10 {
        scores.append(Int(readLine()!)!)
    }
    
    var temp = 0
    for score in scores {
        result += score
        
        if result >= 100 {
            let preDiif = 100 - temp
            let postDiff = result - 100
            if preDiif < postDiff {
                result = temp
            }
            break
        } else {
            temp = result
        }
    }
    
    print(result)
}

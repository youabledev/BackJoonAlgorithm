func test_1213() {
    var preArray = [String]()
    var postArray = [String]()
    var middleValue: String = ""
    
    var input = Array(readLine()!).map { String($0) }
    
    var failFlag = true
    
    while input.count != 0 {
        let preValue = input.removeFirst()
        let postValueIndex = input.firstIndex(of: preValue)
        
        if let index = postValueIndex {
            let postValue = input.remove(at: index)
            preArray.append(preValue)
            postArray.insert(postValue, at: 0)
        } else {
            if !middleValue.isEmpty {
                print("I'm Sorry Hansoo")
                failFlag = false
                break
            }
            middleValue = preValue
        }
    }
    if failFlag {
        print(preArray.sorted().joined() + middleValue + postArray.sorted().reversed().joined())
    }
}

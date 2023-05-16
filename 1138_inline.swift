func inline() {
    let count = Int(readLine()!)!
    let values = readLine()!.split(separator: " ").map { Int($0)! }
    var results = [Int](repeating: 0, count: count)
    
    for i in 0..<count {
        let value = values[i]
        let people = i + 1
        
        var zeroCount = 0
        for j in 0..<results.count {
            if zeroCount >= value && results[j] == 0 {
                results[j] = people
                break
            } else {
                if results[j] == 0 {
                    zeroCount += 1
                }
            }
        }
    }
    
    print(results.map { String($0) }.joined(separator: " "))
}

func test_11656() {
    let input = readLine()!
    
    var array = [String]()
    for index in 1..<(input.count + 1) {
        array.append(String(input.suffix(index)))
    }
    let result = array.sorted(by: { $0.lowercased() < $1.lowercased() })
    result.forEach { print($0) } 
}

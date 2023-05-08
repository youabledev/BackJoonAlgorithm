func test_1475() {
    let input = readLine()!
    var array = [Int](repeating: 0, count: 10)
    for (_, value) in input.enumerated() {
        var index = Int(String(value))!
        
        if index == 6 {
            index = 9
        }
        
        array[index] += 1
    }
    
    if array[9] != 0 {
        let value = ceil(Double(array[9]) / 2.0)
        array[9] = Int(value)
    }
    
    print(array.max()!)
}

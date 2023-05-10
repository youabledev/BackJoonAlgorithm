func test_2164() {
    let N = Int(readLine()!)!
    
    var array = [Int]()
    for value in 0..<N {
        array.append(value+1)
    }
    
    while array.count > 1 {
        array.removeFirst()
        let appendValue = array.removeFirst() /// o(n)
        array.append(appendValue)
    }
    
    print(array.first!)
}

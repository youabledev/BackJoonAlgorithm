func test_9093() {
    let input = Int(readLine()!)!
    
    for _ in 0..<input {
        let sentence = readLine()!.split(separator: " ").map { String($0.reversed()) }
        print(sentence.joined(separator: " "))
    }
}

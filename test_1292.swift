/// 쉽게 푸는 문제
func test_1292() {
    var value = 1
    var count = 1
    var result = 0
    
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    
    while count <= input[1] {
        for _ in 0..<value {
            if count >= input[0] && count <= input[1] {
                result += value
            }
//            else if count > input[1] {
//                break
//            }
            count += 1
        }
        value += 1
    }
    
    print(result)
}

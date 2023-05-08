/// 소트인사이드
func test_1427() {
    let input = Array(readLine()!)
    let result = Array(input.sorted().reversed().map { String($0) }).joined()
    print(result)
}

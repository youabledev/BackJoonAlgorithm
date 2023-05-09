// x 한 문자를 다른 문자로 바꾸는 경우라고 했으면 B->C 하나만 바뀌는게 아니라 모든 B가 C로 바뀌어야 하지 않나?

func test_2607() {
    let count = Int(readLine()!)! - 1
    let originSet = Set(readLine()!.map { $0 }.map { $0 })
    var result = 0
    
    for _ in 0..<count {
        let compareSet = Set(readLine()!.map { $0 }.map { $0 })
        let originSubtracting = originSet.subtracting(compareSet)
        let compareSubtracting = compareSet.subtracting(originSet)
        if originSubtracting.count == compareSubtracting.count {
            result += 1
        }
    }
    
    print(result)
}

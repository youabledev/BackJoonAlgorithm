func test_1092_ship() {
    let _ = Int(readLine()!)!
    let cranes = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
    
    let _ = Int(readLine()!)!
    var boxs = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
    
    /// 모든 박스를 배로 옮기는데 드는 최소 시간(분)
    var result = 0
    var craneHead = cranes.count
    
    if cranes.first! < boxs.first! {
        print(-1)
    } else {
        while !boxs.isEmpty {
            
            if craneHead >= cranes.count - 1 {
                craneHead = 0
                result += 1
            } else {
                craneHead += 1
            }
            
            for index in 0..<boxs.count {
                if boxs[index] <= cranes[craneHead] {
                    boxs.remove(at: index)
                    break
                }
            }
            
        }
        print(result)
    }
}

    var ulimArray: Array<Int> = [Int]()
    ulimArray = readLine()!.split(separator: " ").map(){Int(String($0))!}
    var ulimSum = 0
    
    var startlinkArray: Array<Int> = [Int]()
    startlinkArray = readLine()!.split(separator: " ").map(){Int(String($0))!}
    var startlinkSum = 0
    
    for index in 0..<ulimArray.count {
        ulimSum += ulimArray[index]
        if ulimSum > startlinkSum {
            break
        }
        
        startlinkSum += startlinkArray[index]
    }
    print(ulimSum > startlinkSum ? "Yes" : "No")

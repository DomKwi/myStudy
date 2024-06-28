import UIKit

var greeting = "Hello, playground"

func loveCalculator() {
    
    let loveScore = Int.random(in: 0...100)
    
    switch loveScore {
    case 81...100:
        print("You love each other like Kanye loves Kanye")
    case 41..<81:
        print("You go together like Coke and Mentos")
    case ...40:
        "You'll be forever alone"
    default:
        print("Error")
    }
    
    
    if loveScore > 80 {
        print("You love each other like Kanye loves Kanye")
    } else if loveScore < 40 {
        print("You go together like Coke and Mentos")
    } else {
        print("You'll be forever alone")
    }
}

loveCalculator()


var number = 1200

func numberByFour() {
    if number % 4 == 0 && number % 100 != 0 || number % 400 == 0 {
        print("yes")
    } else {
        print("no")
    }
}

numberByFour()


var studentsAndScores = ["Amy": 55, "James": 88, "Helen": 23]

func highestScore(scores: [String: Int]) {
    
    //Write your code here.
    /*
    let sortedScore = Array(studentsAndScores.values).sorted(by: >)
    print(sortedScore)
    */
}

highestScore(scores: ["Amy": 55, "James": 88, "Helen": 23])

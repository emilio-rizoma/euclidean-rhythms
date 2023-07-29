//
//  EuclideanAlgorithm.swift
//  EuclidianRhythms
//
//  Created by Rival on 27/07/23.
//

// Euclidean Algorithm
struct EuclideanAlgorithm {
    func generateEuclidean(steps: Int, pulses: Int) -> [Int] {
        guard pulses <= steps else { return [] }
        let front:[[Int]] = Array(repeating: [1], count: pulses)
        let back:[[Int]] = Array(repeating: [0], count: steps - pulses)
        return euclidRecursive(front: front, back: back).flatMap {$0}
    }
    
    private func euclidRecursive (front: [[Int]], back: [[Int]]) -> [[Int]] {
        var back = back
        var front = front
        
        guard back.count > 1 else { return front + back }
        
        var newFront = [[Int]]()
        while front.count > 0 && back.count > 0 {
            newFront.append(front.popLast()! + back.popLast()!)
        }
        return euclidRecursive(front: newFront, back: front + back)
    }
}

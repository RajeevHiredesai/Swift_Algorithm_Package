//
//  File.swift
//  
//
//  Created by Rajeev Hiredesai on 07/03/23.
//

import Foundation

public enum Algorithm {
    //Genric Binary Search
    //INPUT: [1, 2, 4, 6, 8, 10], key: 6   OUTPUT: 3
    //INPUT: [1, 2, 4, 6, 8, 10], key: 3   OUTPUT: -1
    public static func binarySearch<T: Comparable & Equatable>(list: [T], key: T) -> Int {
        var low = 0, high = list.count - 1
        
        while low <= high {
            let mid = (low + high)/2
            
            if list[mid] == key { return mid }
            
            if key < list[mid] {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        
        return -1
    }
}

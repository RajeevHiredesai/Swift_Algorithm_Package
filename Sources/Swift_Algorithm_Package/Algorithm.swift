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
    
    //Generic Search in Rotated sorted list
    //INPUT: [7, 8, 9, 10, 0, 1, 2, 3, 4], Key: 2    OUTPUT: 6
    //INPUT: [7, 8, 9, 10, 0, 1, 2, 3, 4], Key: 9    OUTPUT: 2
    //INPUT: [7, 8, 9, 10, 0, 1, 2, 3, 4], Key: 5    OUTPUT: -1
    public static func rotatedSorted<T: Comparable & Equatable>(list: [T], key: T) -> Int {
        var low = 0, high = list.count - 1
        
        while low <= high {
            let mid = (low + high)/2
            
            if list[mid] == key { return mid }
            
            if list[low] <= list[mid] { //Mid falls in Left portion
                if key > list[mid] || key < list[low] {
                    low = mid + 1
                } else {
                    high = mid - 1
                }
            } else { // Mid falls in Right portion
                if key < list[mid] || key > list[high] {
                    high = mid - 1
                } else {
                    low = mid + 1
                }
            }
        }
        
        return -1
    }
}

//
//  main.swift
//  OptionalsDemo
//
//  Created by Dominik Kwiecień on 18/09/2024.
//
let myOptional: String?

myOptional = "Dominik"

// checking if otional is nil
if myOptional != nil {
    let text: String = myOptional!
} else {
    print("myOptional was fund to be nil.")
}
 1

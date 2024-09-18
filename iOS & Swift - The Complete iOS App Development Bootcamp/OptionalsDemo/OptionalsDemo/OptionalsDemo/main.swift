//
//  main.swift
//  OptionalsDemo
//
//  Created by Dominik Kwiecień on 18/09/2024.
//

/*
let myOptional: String?

myOptional = "Dominik"

let text: String = myOptional ?? "i am the default value"

print(text)
 
 
//checking for nil value
 
if myOptional != nil {
    let text: String = myOptional!
} else {
    print("myOptional was fund to be nil.")
}

//optional Binding
 
if let safeOptional = myOptional {
    let text: String = safeOptional
} else {
    print("myOptional was fund to be nil.")
}
*/

struct MyOptionals {
    var property = 123
    
    func method() {
        print("I am the struct's method")
    }
}

let myOptional: MyOptionals?

myOptional = nil

print(myOptional?.property)

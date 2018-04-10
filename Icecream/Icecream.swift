//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String: String] = ["Joe": "Peanut Butter and Chocolate",
                                                       "Tim": "Natural Vanilla",
                                                       "Sophie": "Mexican Chocolate",
                                                       "Deniz": "Natural Vanilla",
                                                       "Tom": "Mexican Chocolate",
                                                       "Jim": "Natural Vanilla",
                                                       "Susan": "Cookies 'N' Cream"]
    
   
    
    
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var namesWhoLike: [String] = []
        for (name, flavour) in favoriteFlavorsOfIceCream {
            if flavour == flavor {
                namesWhoLike.append(name)
            }
        }
        return namesWhoLike
    }
    
    
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var peopleWhoLike = 0
        for (flavour) in favoriteFlavorsOfIceCream.values {
            if flavour == flavor {
                peopleWhoLike += 1
            }
        }
        return peopleWhoLike
    }
    
    
    
    
    
    
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        if let flavor = favoriteFlavorsOfIceCream[person] {
            return flavor
        } else {
            return nil
        }
    }
   
    
    
    
    
    
    
    // 5.
    func replace(flavor : String, forPerson person: String) -> Bool {
        if favoriteFlavorsOfIceCream.keys.contains(person){
            favoriteFlavorsOfIceCream[person] = flavor
            return true
            
        } else {
            return false
        }
        
    }
    
 
   
    
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream.keys.contains(person) {
            favoriteFlavorsOfIceCream.removeValue(forKey: person)
            return true
        } else {
            return false
        }
    }
    
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees () -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool {
        if !favoriteFlavorsOfIceCream.keys.contains(person){
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
            return true
        } else {
            return false
        }
    }
    
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String {
        let allnames =
        Array(favoriteFlavorsOfIceCream.keys).sorted()
        var attendees = ""
        for person in allnames {
            if let flavor = favoriteFlavorsOfIceCream[person] {
                attendees.append("\n\(person) likes \(flavor)")
            }
        }
        return attendees
    }
    
    
    
    
    
    
    
    

}

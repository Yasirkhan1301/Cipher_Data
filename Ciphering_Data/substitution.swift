//
//  substitution.swift
//  Ciphering_Data
//
//  Created by Yasir khan on 10/10/2020.
//

import Cocoa

class Substitution{
    
    func encrypt(text:String) -> String {
        
        var result = [Character]()

        // Loop over utf8 values.
        for u in text.utf8 {
            // Apply shift to UInt8.
            let s = Int(u) + 5

            if s > 97 + 25 {
                result.append(Character(UnicodeScalar(s - 26)!))
            } else if s < 97 {
                result.append(Character(UnicodeScalar(s + 26)!))
            } else {
                result.append(Character(UnicodeScalar(s)!))
            }
            
    }
        return String(result)
    }
        
        
        func decrypt(value: String) -> String {
            // Empty character array.
            var result = [Character]()

            // Loop over utf8 values.
            for u in value.utf8 {
                // Apply shift to UInt8.
                let s = Int(u) - 5

                // See if value exceeds Z.
                // ... The Z is 26 past "A" which is 97.
                // ... If greater than "Z," shift backwards 26.
                // ... If less than "A," shift forward 26.
                if s > 97 + 25 {
                    result.append(Character(UnicodeScalar(s - 26)!))
                } else if s < 97 {
                    result.append(Character(UnicodeScalar(s + 26)!))
                } else {
                    result.append(Character(UnicodeScalar(s)!))
                }
            }
            // Return String from array.
            return String(result)
        }
    

}

//
//  Person.swift
//  swift-people
//
//  Created by Jenny on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    let name: String
    var ageInYears: Int?
    var skills: [String] = []
    var qualifiedTutor: Bool { return self.getQualifiedTutor() }
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        if let age = ageInYears {
            self.ageInYears = age
        }
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    convenience init() {
        self.init(name: "John Doe")
    }
    
    private func getQualifiedTutor() -> Bool {
        return self.skills.count > 4
    }
    
    func celebrateBirthday() -> String {
        if let age = self.ageInYears {
            return "HAPPY \(age)\(age.ordinal()) BIRTHDAY, \(self.name)!!!".uppercaseString
        } else {
            return "HAPPY BIRTHDAY, \(self.name)!!!".uppercaseString
        }
    }
    
    func learnSkillBash() {
        if !self.skills.contains("bash") {
            skills.append("bash")
        }
    }
    
    func learnSkillXcode() {
        if !self.skills.contains("Xcode") {
            skills.append("Xcode")
        }
    }

    func learnSkillObjectiveC() {
        if !self.skills.contains("Objective-C") {
            skills.append("Objective-C")
        }
    }

    func learnSkillSwift() {
        if !self.skills.contains("Swift") {
            skills.append("Swift")
        }
    }

    func learnSkillInterfaceBuilder() {
        if !self.skills.contains("Interface Builder") {
            skills.append("Interface Builder")
        }
    }
}

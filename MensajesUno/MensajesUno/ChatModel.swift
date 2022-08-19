//
//  ChatModel.swift
//  MensajesUno
//
//  Created by Sinuhé Ruedas on 08/12/21.
//

import Foundation

struct Chat: Identifiable {
    var id: UUID { person.id }
    let person: Person
    var messages: [Message]
    var hasUnreadMessage = false
}

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let imgString: String
}

struct Message: Identifiable {
    
    enum MessageType {
        case Sent, Received
    }
    
    let id = UUID()
    let date: Date
    let text: String
    let type: MessageType
    
    init(_ text: String, type: MessageType, date: Date) {
        self.date = date
        self.type = type
        self.text = text
    }
    
    init(_ text: String, type: MessageType) {
        self.init(text, type: type, date: Date())
    }
    
}

extension Chat {
    
    static let sampleChat = [
        Chat(person: Person(name: "Homero", imgString: "img3"), messages: [
            Message("Hey Pato", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("in any country, been responsible for any new step, whether it was political", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Students are the people who have their idealism intact 😊", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Sure, how can I hel with it?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Maybe you send me some \"good\" hints 👍🏼", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Sure, no problem with that 🤓", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("But, the students can also be very much vulnerable", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("because they do not know whether", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("So, at this life, when you are a student", type: .Sent, date:Date(timeIntervalSinceNow: -86400 * 1)),
            Message("This show is so good, hahaha", type: .Received, date: Date()),
        ],
             hasUnreadMessage: true),
        
        Chat(person: Person(name: "Ana Rosas", imgString: "img4"), messages: [
            Message("Hay Vicky, how is your bootcamp going?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 5)),
            Message("First and foremost thing as students we enter into university 🤓", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("you come with an open mind and with an understanding", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Now what you learn in the university is the knowledge of the tree 🌳", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Knowledge that you can perceive and understand through your mental activity", type: .Received, date: Date()),
            Message("but what I’m going to tell you about today is the knowledge of the roots.", type: .Received, date: Date()),
            
        ]),
    ]
    
}

//
//  ChatViewController.swift
//  Messages App
//
//  Created by Sinuhé Ruedas on 04/12/21.
//

import UIKit
import MessageKit

struct Sender: SenderType {
    var senderId: String
    var displayName: String
}

struct Message: MessageType {
    var sender: SenderType
    var messageId: String
    var sentDate: Date
    var kind: MessageKind
    
}

class ChatViewController: MessagesViewController, MessagesDataSource, MessagesLayoutDelegate, MessagesDisplayDelegate {
   
    let currentUser = Sender(senderId: "self", displayName: "Personal")
    let otherUser = Sender(senderId: "other", displayName: "Sinu Alvarez")

    var messages = [MessageType]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messages.append(Message(sender: currentUser, messageId: "1", sentDate: Date().addingTimeInterval(-86400), kind: .text("Bienvenido a Mensajes")))
        
        messages.append(Message(sender: otherUser, messageId: "2", sentDate: Date().addingTimeInterval(-76400), kind: .text("Muchas gracias por inivitarme a la conversación")))
        
        messages.append(Message(sender: currentUser, messageId: "3", sentDate: Date().addingTimeInterval(-66400), kind: .text("¿De quién es este paraguas?")))
        
        messages.append(Message(sender: otherUser, messageId: "4", sentDate: Date().addingTimeInterval(-56400), kind: .text("No lo sé, mío no es. ¿Alguien olvidó un paraguas en el pasillo?")))
        
        messages.append(Message(sender: currentUser, messageId: "5", sentDate: Date().addingTimeInterval(-46400), kind: .text("Margarita estuvo aquí más temprano. Probablemente sea de ella.")))
        
        messages.append(Message(sender: otherUser, messageId: "6", sentDate: Date().addingTimeInterval(-32400), kind: .text("Voy a llamarla para avisarle que está aquí.")))
        
        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self

    }
    
    func currentSender() -> SenderType {
        return currentUser
    }
    
    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        return messages[indexPath.section]
    }
    
    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        return messages.count
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

struct CalendarView: View {
    var body: some View {
        Image(systemName: "calendar")
            .resizable()
            .frame(width: 50, height: 50)
            .padding()
            .background(Color.red)
            .cornerRadius(10)
            .foregroundColor(.white)
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()

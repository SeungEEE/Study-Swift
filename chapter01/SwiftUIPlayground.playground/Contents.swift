//: A UIKit based Playground for presenting user interface
  
import SwiftUI
import PlaygroundSupport

struct ContentView: View{
    var body: some View {
        Text("Hello \nSwiftUI")
        Text("Hello") + Text("SwiftUI")
    }
}
PlaygroundPage.current.setLiveView(ContentView())
/* class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
} */
// Present the view controller in the Live View window
/* PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView()) */

import UIKit
import SwiftUI
import ComposeApp

class ContentViewModel: ObservableObject {
    @Published var vc: UIViewController?
    func presentNewNav() {
        let navController = UINavigationController()
        navController.viewControllers = [MainViewControllerKt.MainViewController()]
        vc?.present(navController, animated: true)
    }
}

struct ContentView: View {
    @ObservedObject var viewModel: ContentViewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Button("Open Compose App") {
                viewModel.presentNewNav()
            }.padding()
        }
    }
}




//
//  SampleViewController.swift
//  iosApp
//
//  Created by Gustavo Valvassori on 05/11/24.
//  Copyright © 2024 orgName. All rights reserved.
//

import Foundation
import SwiftUI

class SampleViewController: UIHostingController<ContentView> {

    init() {
        let view = ContentView()
        super.init(rootView: view)
        view.viewModel.vc = self
    }

    @MainActor required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

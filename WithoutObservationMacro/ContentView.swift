//
//  Copyright © Uber Technologies, Inc. All rights reserved.
//


import SwiftUI

public class Donut: Identifiable {
    public let name: String
    
    public init(name: String) {
        self.name = name
    }
}

public class FoodTruckModel: ObservableObject {
    @Published var donuts = [Donut(name: "Donut A")]
    
    func addDonut() {
        donuts.append(.init(name: UUID().uuidString))
    }
}




struct ContentView: View {
    @StateObject
    var model: FoodTruckModel
    
    var body: some View {
        List {
            Section("Donuts") {
                ForEach(model.donuts) { donut in
                    Text(donut.name)
                }
                Button("Add new donut") {
                    model.addDonut()
                }
            }
        }
    }
}

private let model = FoodTruckModel()
#Preview {
    ContentView(model: model)
}

import SwiftUI
import HomeKit

class SmartHomeManager: NSObject, ObservableObject, HMHomeManagerDelegate {
    @Published var accessories: [HMAccessory] = []
    private var homeManager = HMHomeManager()

    override init() {
        super.init()
        homeManager.delegate = self
    }

    func homeManagerDidUpdateHomes(_ manager: HMHomeManager) {
        if let home = manager.primaryHome {
            accessories = home.accessories
        }
    }

    func toggleAccessory(_ accessory: HMAccessory) {
        for service in accessory.services {
            for characteristic in service.characteristics {
                if characteristic.characteristicType == HMCharacteristicTypePowerState {
                    characteristic.readValue { error in
                        if let value = characteristic.value as? Bool {
                            characteristic.writeValue(!value) { error in
                                if let error = error {
                                    print("Write error: \(error.localizedDescription)")
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    @StateObject private var manager = SmartHomeManager()

    var body: some View {
        NavigationView {
            List(manager.accessories, id: \.uniqueIdentifier) { accessory in
                Button(action: { manager.toggleAccessory(accessory) }) {
                    Text(accessory.name)
                }
            }
            .navigationTitle("🏠 Smart Home Hub")
        }
    }
}

@main
struct SmartHomeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
import SwiftUI
import HomeKit

class SmartHomeManager: NSObject, ObservableObject, HMHomeManagerDelegate {
    @Published var accessories: [HMAccessory] = []
    private var homeManager = HMHomeManager()

    override init() {
        super.init()
        homeManager.delegate = self
    }

    func homeManagerDidUpdateHomes(_ manager: HMHomeManager) {
        if let home = manager.primaryHome {
            accessories = home.accessories
        }
    }

    func toggleAccessory(_ accessory: HMAccessory) {
        for service in accessory.services {
            for characteristic in service.characteristics {
                if characteristic.characteristicType == HMCharacteristicTypePowerState {
                    characteristic.readValue { error in
                        if let value = characteristic.value as? Bool {
                            characteristic.writeValue(!value) { error in
                                if let error = error {
                                    print("Write error: \(error.localizedDescription)")
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    @StateObject private var manager = SmartHomeManager()

    var body: some View {
        NavigationView {
            List(manager.accessories, id: \.uniqueIdentifier) { accessory in
                Button(action: { manager.toggleAccessory(accessory) }) {
                    Text(accessory.name)
                }
            }
            .navigationTitle("🏠 Smart Home Hub")
        }
    }
}

@main
struct SmartHomeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
import SwiftUI
import HomeKit

class SmartHomeManager: NSObject, ObservableObject, HMHomeManagerDelegate {
    @Published var accessories: [HMAccessory] = []
    private var homeManager = HMHomeManager()

    override init() {
        super.init()
        homeManager.delegate = self
    }

    func homeManagerDidUpdateHomes(_ manager: HMHomeManager) {
        if let home = manager.primaryHome {
            accessories = home.accessories
        }
    }

    func toggleAccessory(_ accessory: HMAccessory) {
        for service in accessory.services {
            for characteristic in service.characteristics {
                if characteristic.characteristicType == HMCharacteristicTypePowerState {
                    characteristic.readValue { error in
                        if let value = characteristic.value as? Bool {
                            characteristic.writeValue(!value) { error in
                                if let error = error {
                                    print("Write error: \(error.localizedDescription)")
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    @StateObject private var manager = SmartHomeManager()

    var body: some View {
        NavigationView {
            List(manager.accessories, id: \.uniqueIdentifier) { accessory in
                Button(action: { manager.toggleAccessory(accessory) }) {
                    Text(accessory.name)
                }
            }
            .navigationTitle("🏠 Smart Home Hub")
        }
    }
}

@main
struct SmartHomeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
import SwiftUI
import HomeKit

class SmartHomeManager: NSObject, ObservableObject, HMHomeManagerDelegate {
    @Published var accessories: [HMAccessory] = []
    private var homeManager = HMHomeManager()

    override init() {
        super.init()
        homeManager.delegate = self
    }

    func homeManagerDidUpdateHomes(_ manager: HMHomeManager) {
        if let home = manager.primaryHome {
            accessories = home.accessories
        }
    }

    func toggleAccessory(_ accessory: HMAccessory) {
        for service in accessory.services {
            for characteristic in service.characteristics {
                if characteristic.characteristicType == HMCharacteristicTypePowerState {
                    characteristic.readValue { error in
                        if let value = characteristic.value as? Bool {
                            characteristic.writeValue(!value) { error in
                                if let error = error {
                                    print("Write error: \(error.localizedDescription)")
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    @StateObject private var manager = SmartHomeManager()

    var body: some View {
        NavigationView {
            List(manager.accessories, id: \.uniqueIdentifier) { accessory in
                Button(action: { manager.toggleAccessory(accessory) }) {
                    Text(accessory.name)
                }
            }
            .navigationTitle("🏠 Smart Home Hub")
        }
    }
}

@main
struct SmartHomeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
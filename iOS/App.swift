import SwiftUI

@main struct App: SwiftUI.App {
//    @Environment(\.scenePhase) private var phase
//    @UIApplicationDelegateAdaptor(Delegate.self) private var delegate
    
    var body: some Scene {
        WindowGroup {
            Board()
                .task {
//                    cloud.ready.notify(queue: .main) {
//                        cloud.pull.send()
//                        Defaults.start()
//
//                        Task
//                            .detached {
//                                _ = await UNUserNotificationCenter.request()
//                                await store.launch()
//                            }
//                    }
                }
        }
//        .onChange(of: phase) {
//            switch $0 {
//            case .active:
//                cloud.pull.send()
//            default:
//                break
//            }
//        }
    }
}

import SwiftUI

@main struct App: SwiftUI.App {
    @StateObject private var session = Session()
    @Environment(\.scenePhase) private var phase
    @UIApplicationDelegateAdaptor(Delegate.self) private var delegate
    
    var body: some Scene {
        WindowGroup {
            Window(session: session)
                .preferredColorScheme(.dark)
                .onAppear {
                    session.player = .init()
                }
//                .onReceive(cloud) { model in
//                    session.walking = model.walking
//                    
//                    Task
//                        .detached(priority: .utility) {
//                            await session.update(chart: model.chart, tiles: model.tiles)
//                        }
//                }
//                .task {
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
//                }
            }
//        .onChange(of: phase) {
//            switch $0 {
//            case .active:
//                cloud.pull.send()
//            default:
//                break
//            }
        }
}

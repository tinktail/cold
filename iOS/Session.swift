import Foundation

final class Session: ObservableObject {
    @Published var player: Player?
    let cards = Cards()
}

import SwiftUI

struct Window: View {
    @ObservedObject var session: Session
    
    var body: some View {
        if session.player == nil {
            Text("Loading")
        } else {
            Board(session: session)
        }
    }
}

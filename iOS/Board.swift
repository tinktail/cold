import SwiftUI

struct Board: View {
    @ObservedObject var session: Session
    
    var body: some View {
        VStack(spacing: 0) {
            if let player = session.player {
                Top(player: player)
                Card(item: session.cards[player.card])
                Text(session.cards[player.card].message)
                    .font(.callout)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxWidth: 290, maxHeight: .greatestFiniteMagnitude,
                           alignment: .topLeading)
                    .padding([.top, .leading, .trailing])
                    .edgesIgnoringSafeArea(.bottom)
            }
        }
        .frame(maxWidth: .greatestFiniteMagnitude, maxHeight: .greatestFiniteMagnitude)
        .safeAreaInset(edge: .bottom, spacing: 0) {
            HStack {
                Control(symbol: "xmark.circle.fill") {
                    
                }
                
                Spacer()
                    .frame(width: 50)
                
                Control(symbol: "checkmark.circle.fill") {
                    
                }
            }
            .padding(.bottom, 20)
        }
    }
}

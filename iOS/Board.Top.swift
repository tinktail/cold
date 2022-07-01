import SwiftUI
import Master

extension Board {
    struct Top: View {
        let player: Player
        
        var body: some View {
            HStack {
                Image(systemName: "dollarsign.circle.fill")
                    .font(.system(size: 30, weight: .light))
                    .symbolRenderingMode(.hierarchical)
                    .foregroundColor(.secondary)
                    .padding(.leading)
                Text(player.money.formatted())
                    .font(.callout)
                    .foregroundColor(.secondary)
                
                Text(player.days.formatted())
                    .font(.callout)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis.circle.fill")
                        .font(.system(size: 30, weight: .light))
                        .frame(width: 70, height: 70)
                }
            }
        }
    }
}

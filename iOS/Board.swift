import SwiftUI

struct Board: View {
    var body: some View {
        ZStack {
            Card()
        }
        .frame(maxWidth: .greatestFiniteMagnitude, maxHeight: .greatestFiniteMagnitude)
        .safeAreaInset(edge: .bottom, spacing: 0) {
            HStack {
                Control(symbol: "xmark.circle", size: 34) {
                    
                }
                
                Spacer()
                    .frame(width: 50)
                
                Control(symbol: "checkmark.circle", size: 34) {
                    
                }
            }
            .padding(.vertical, 10)
        }
        .preferredColorScheme(.dark)
    }
}

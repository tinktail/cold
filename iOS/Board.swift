import SwiftUI

struct Board: View {
    var body: some View {
        VStack(spacing: 0) {
            Card()
            Text("Are you ready?")
                .font(.callout)
                .fixedSize(horizontal: false, vertical: true)
                .frame(maxWidth: 290, alignment: .leading)
                .padding()
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
        .preferredColorScheme(.dark)
    }
}

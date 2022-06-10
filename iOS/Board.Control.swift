import SwiftUI

extension Board {
    struct Control: View {
        let symbol: String
        let size: CGFloat
        let action: () -> Void
        
        var body: some View {
            Button(action: action) {
                Image(systemName: symbol)
                    .symbolRenderingMode(.hierarchical)
                    .font(.system(size: size, weight: .regular))
                    .frame(width: 64, height: 64)
                    .contentShape(Rectangle())
            }
        }
    }
}

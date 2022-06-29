import SwiftUI

extension Board {
    struct Control: View {
        let symbol: String
        let action: () -> Void
        
        var body: some View {
            Button(action: action) {
                Image(systemName: symbol)
                    .symbolRenderingMode(.hierarchical)
                    .font(.system(size: 50, weight: .regular))
                    .frame(width: 80, height: 80)
                    .contentShape(Rectangle())
            }
        }
    }
}

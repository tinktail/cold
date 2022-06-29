import SwiftUI

extension Board {
    struct Card: View {
        var body: some View {
            ZStack {
                Rectangle()
                    .fill(Color(.tertiarySystemBackground))
                VStack(spacing: 0) {
                    Image("Card.Simely")
                    Spacer()
                }
                VStack(spacing: 0) {
                    Spacer()
                    Text("Simely")
                        .font(.title3.bold())
                        .foregroundStyle(.tertiary)
                        .frame(maxWidth: .greatestFiniteMagnitude, alignment: .leading)
                    Text("Foreign Office")
                        .font(.callout)
                        .foregroundStyle(.secondary)
                        .frame(maxWidth: .greatestFiniteMagnitude, alignment: .leading)
                }
                .padding([.leading, .bottom])
            }
            .frame(width: 320, height: 400)
            .mask(RoundedRectangle(cornerRadius: 18, style: .continuous))
        }
    }
}

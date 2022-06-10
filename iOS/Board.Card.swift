import SwiftUI

extension Board {
    struct Card: View {
        var body: some View {
            ZStack {
                Rectangle()
                    .fill(Color(.tertiarySystemBackground))
                VStack {
                    Image("Card.Simely")
                    Spacer()
                }
                VStack {
                    Spacer()
                    Text("Simely")
                        .font(.title3.bold())
                        .foregroundStyle(.tertiary)
                        .frame(maxWidth: .greatestFiniteMagnitude, alignment: .leading)
                    Text("Are you ready?")
                        .font(.callout)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(maxWidth: .greatestFiniteMagnitude, alignment: .leading)
                }
                .padding([.leading, .bottom])
            }
            .mask(RoundedRectangle(cornerRadius: 18, style: .continuous))
            .padding()
        }
    }
}

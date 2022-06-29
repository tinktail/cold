public struct Card: Hashable {
    public let category: Category
    public let message: String
    let id: ID
    let requirements: Set<Requirement>
    let storable: Bool
    let accept: Set<Effect>
    let reject: Set<Effect>
}

public struct Card: Identifiable {
    public let id: ID
    public let requirements: Set<Requirement>
    public let category: Category
    public let message: String
    public let accept: Set<Effect>
    public let reject: Set<Effect>
}

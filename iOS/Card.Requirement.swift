extension Card {
    public enum Requirement: Hashable {
        case
        accepted(ID),
        rejected(ID),
        seen(ID),
        organisation(Organisation),
        location(Location)
    }
}
